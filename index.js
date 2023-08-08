// Jabb — A Discord bot powerd by chatGPT.
// By Nicolò Diamante <hello@nicolodiamante.com>
// https://github.com/nicolodiamante/jabb
// MIT License

// Load environment variables
require('dotenv/config')
const prompt = require('./.src/prompt')

// Prepare to connect to the Discord API.
const { Client, IntentsBitField } = require('discord.js')
const client = new Client({
  intents: [
    IntentsBitField.Flags.Guilds,
    IntentsBitField.Flags.GuildMessages,
    IntentsBitField.Flags.MessageContent
  ]
})

client.on('ready', () => {
  console.log('Jabb is now online on Discord!')
})

// Prepare connection to OpenAI API.
const { Configuration, OpenAIApi } = require('openai')
const configuration = new Configuration({
  organization: process.env.OPENAI_ORG,
  apiKey: process.env.OPENAI_API_KEY
})

const openai = new OpenAIApi(configuration)

// Check for when a message on discord is sent.
client.on('messageCreate', async (message) => {
  // Don't respond to yourself or other bots
  if (message.author.bot) return

  // Limit channel usage when `DISCORD_CHANNEL_ID` is set, else all channels.
  if (
    process.env.DISCORD_CHANNEL_ID &&
    message.channel.id !== process.env.DISCORD_CHANNEL_ID
  ) {
    return
  }

  // Don't respond if message start with '!'
  if (message.content.startsWith('!')) return

  // Access the prompt
  const { CHATGPT_PROMPT } = prompt
  let conversationLog = [
    {
      role: 'system',
      content: CHATGPT_PROMPT
    }
  ]

  try {
    await message.channel.sendTyping()
    let prevMessages = await message.channel.messages.fetch({ limit: 15 })
    prevMessages.reverse()

    prevMessages.forEach((msg) => {
      if (msg.content.startsWith('!')) return
      if (msg.author.id !== client.user.id && message.author.bot) return
      if (msg.author.id == client.user.id) {
        conversationLog.push({
          role: 'assistant',
          content: msg.content,
          name: msg.author.username
            .replace(/\s+/g, '_')
            .replace(/[^\w\s]/gi, '')
        })
      }

      if (msg.author.id == message.author.id) {
        conversationLog.push({
          role: 'user',
          content: msg.content,
          name: message.author.username
            .replace(/\s+/g, '_')
            .replace(/[^\w\s]/gi, '')
        })
      }
    })

    const result = await openai
      .createChatCompletion({
        model: process.env.CHATGPT_MODEL,
        messages: conversationLog,
        temperature: parseFloat(process.env.CHATGPT_TEMP),
        top_p: parseFloat(process.env.CHATGPT_TOP_P),
        max_tokens: parseInt(process.env.CHATGPT_MAX_TOKENS),
        stop: 'Jabb:'
      })
      .catch((error) => {
        console.log(`OPENAI ERR: ${error}`)
      })
    message.reply(result.data.choices[0].message)
  } catch (error) {
    console.log(`ERR: ${error}`)
  }
})

// Log the bot into Discord.
client.login(process.env.DISCORD_TOKEN)
