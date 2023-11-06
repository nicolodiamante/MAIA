// MAIA — A friendly Discord bot powered by chatGPT.
// By Nicolò Diamante <hello@nicolodiamante.com>
// https://github.com/nicolodiamante/MAIA
// MIT License

// Load environment variables.
require('dotenv/config')
const prompt = require('./.src/prompt')

// Validate environment variables.
const REQUIRED_ENV_VARS = [
  'OPENAI_ORG',
  'OPENAI_API_KEY',
  'DISCORD_TOKEN',
  'CHATGPT_MODEL',
  'CHATGPT_TEMP',
  'CHATGPT_TOP_P',
  'CHATGPT_MAX_TOKENS'
]

REQUIRED_ENV_VARS.forEach((envVar) => {
  if (!process.env[envVar]) {
    console.error(`Missing required environment variable: ${envVar}`)
    process.exit(1)
  }
})

// Import Discord.js library and prepare the client with necessary intents.
const { Client, IntentsBitField } = require('discord.js')
const client = new Client({
  intents: [
    IntentsBitField.Flags.Guilds,
    IntentsBitField.Flags.GuildMessages,
    IntentsBitField.Flags.MessageContent
  ]
})

// Log a message to the console once the bot is ready and online.
client.on('ready', () => {
  console.log('MAIA is now online on Discord!')
})

// Prepare connection to OpenAI API using configurations from env variables.
const { Configuration, OpenAIApi } = require('openai')
const configuration = new Configuration({
  organization: process.env.OPENAI_ORG,
  apiKey: process.env.OPENAI_API_KEY
})
const openai = new OpenAIApi(configuration)

// Event listener for incoming messages on Discord.
client.on('messageCreate', async (message) => {
  // Ignore messages from bots.
  if (message.author.bot) return

  // Restrict bot activity to a specific channel if DISCORD_CHANNEL_ID is set, otherwise, all channels.
  if (
    process.env.DISCORD_CHANNEL_ID &&
    message.channel.id !== process.env.DISCORD_CHANNEL_ID
  ) {
    return
  }

  // Don't process messages starting with '!'.
  if (message.content.startsWith('!')) {
    return
  }

  // Prepare a log for the conversation.
  let conversationLog = []

  // Include the bot prompt if operating in a specific channel.
  if (
    process.env.DISCORD_CHANNEL_ID &&
    message.channel.id === process.env.DISCORD_CHANNEL_ID
  ) {
    // Access the prompt.
    const { MAIA_PROMPT } = prompt
    conversationLog.push({
      role: 'system',
      content: MAIA_PROMPT
    })
  }

  // Log conversation details if CHAT_LOG is enabled.
  if (process.env.CHAT_LOG === '1') {
    for (const log of conversationLog) {
      console.log(log.role, log.content)
    }
  }

  try {
    // Fetch previous messages to build the conversation history.
    await message.channel.sendTyping()
    let prevMessages = await message.channel.messages.fetch({ limit: 20 })
    prevMessages.reverse()

    const sanitizedBotUsername = client.user.username
      .replace(/\s+/g, '_')
      .replace(/[^\w\s]/gi, '')

    // Iterate through previous messages to construct the log.
    prevMessages.forEach((msg) => {
      if (msg.content.startsWith('!')) return
      if (msg.author.bot) return // Corrected the check for bot messages.
      if (msg.author.id === client.user.id) {
        // Push the message to the log.
        conversationLog.push({
          role: 'assistant',
          content: msg.content,
          name: sanitizedBotUsername
        })
      }

      // Determine role and sanitise username.
      if (msg.author.id === message.author.id) {
        conversationLog.push({
          role: 'user',
          content: msg.content,
          name: message.author.username
            .replace(/\s+/g, '_')
            .replace(/[^\w\s]/gi, '')
        })
      }
    })

    // Use OpenAI to generate a response based on the conversation log.
    const result = await openai
      .createChatCompletion({
        model: process.env.CHATGPT_MODEL,
        messages: conversationLog,
        temperature: parseFloat(process.env.CHATGPT_TEMP),
        top_p: parseFloat(process.env.CHATGPT_TOP_P),
        max_tokens: parseInt(process.env.CHATGPT_MAX_TOKENS),
        stop: 'MAIA:'
      })
      .catch((error) => {
        console.error(`OPENAI ERR: ${error}`) // logging for errors.
        throw error // Re-throw the error to handle in the outer catch.
      })

    // Send the generated response back to the channel.
    message.reply(result.data.choices[0].message)
  } catch (error) {
    console.error(`ERR: ${error}`) // logging for errors.
  }
})

// Use the bot token to log in and begin listening for events.
client.login(process.env.DISCORD_TOKEN)
