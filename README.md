<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/jabb/assets/48920263/934417bb-1ab4-4acb-9726-d5e4c38e8b9f" draggable="false" ondragstart="return false;" alt="Jabb" title="Jabb" />
    <img src="https://github.com/nicolodiamante/jabb/assets/48920263/0c4de04c-61d0-4bb9-ba60-6079c2784513" draggable="false" ondragstart="return false; "alt="Jabb" title="Jabb" />
  </picture>
</p>

[Discord][discord], a renowned digital platform, has seen massive use in recent years as it combines text, voice, and video communication, bringing people together over common interests. One of its pivotal features is the ability to integrate AI chatbots like [ChatGPT][chaGPT], which can remarkably enhance user experience. Among these, Jabb is a bot that embeds the power of ChatGPT, ensuring friendliness and utility at its best. The bot not only enlivens your Discord server but also keeps it informed and entertained, ultimately serving as a powerful tool to boost user engagement in your channel. In essence, jabb serves as a valuable tool for those seeking to leverage AI technology within their Discord communities.

<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/jabb/assets/48920263/f3b0b679-3f99-4dd2-83e8-254419cdb5a8" draggable="false" ondragstart="return false; "alt="OpenAI + Discord" title="OpenAI + Discord" width="700px" />
  </picture>
</p>

<br><br>

## Requirements to get Jabb to work within Discord Server

### Create the bot

It's time to construct our Discord bot. To start, visit the [Discord Developers Applications][discord-dev] page. If you're not logged in yet, make sure to sign in. You'll see an option labeled "Create Application" on the right side of the page, click on it, then assign a name to your application. You are free to use any name you like. For example, I'll name mine "Jabb".

<br><br>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/jabb/assets/48920263/c2af2194-fe58-4d50-9f37-be5840d94f98" draggable="false" ondragstart="return false;" alt="jabb Deployed" title="jabb Deployed" />
    <img src="https://github.com/nicolodiamante/jabb/assets/48920263/e5e5dd51-eda1-4918-a59f-f983a1546a47" draggable="false" ondragstart="return false; "alt="jabb Deployed" title="jabb Deployed" width="750px" />
  </picture>
</p>

<br><br>

Begin by assigning an avatar to your application. Afterward, proceed to the "bot" section located on the left-hand side of your screen and click "Create Bot". Once your bot has been created, adjust the following settings according to your preferences:

1. Deactivate the "Public Bot" setting if you wish to prevent others from inviting your bot.

   - [ ] Public Bot

2. Activate all the "Intense Settings":

   - [x] Presence Intent
   - [x] Server Member Intent
   - [x] Message Content Intent

3. Select OAuth2, which is on your screen's left, and choose "↳ URL Generator" to create an invitation link for your Discord bot. Within the scope section, select:

   - [x] Bot
   - [x] Application.commands (If you plan to include `/` commands)

   Proceed by navigating to the bot permissions section and select:

   - [x] Send messages

   Continue with the addition of the bot to your server, using the same procedure as for any other bot. Upon activation of this setting, scroll down the page and copy the generated URL. Ultimately, visit your Discord server and paste the link. Once pasted, click on the link to summon the bot to your server.

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/jabb/assets/48920263/651e21c8-d174-42db-b4e6-c38227981475" draggable="false" ondragstart="return false;" alt="Paste your API keys" title="Paste your API keys" width="750px" />
  </picture>
</p>

4. Lastly, ensure to safeguard our bot token by clicking on "Bot", located on the left side of your screen, and choosing "Reset Token". A long string appears under the bot's username. Ensure you have copied it. Once you've copied the key, you will not have access to it again - if you lose the key, you'll have to reset the token.

<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/jabb/assets/48920263/3d66fa06-5cf3-4a1c-892f-9153dfa74697" draggable="false" ondragstart="return false;" alt="Discord Chat" title="Discord Chat" width="750px" />
  </picture>
</p>

<br><br>

5. After copying the token, open your Discord app and navigate to your server. Paste the token and click on the link—follow the prompted steps to allow your bot into your server. Once you've invited the bot, it will appear on the Member list on your right-hand side; it will be offline initially.

<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/jabb/assets/48920263/a0a7ca36-cc09-40b8-b76a-35aafcf17ce7" draggable="false" ondragstart="return false;" alt="Paste your API keys" title="Paste your API keys" width="800px" />
  </picture>
</p>

<br><br>

With the bot now created and added to your Discord server, the next steps are straightforward, but they do involve some specific links and prerequisites for seamless operation. It's time to gather all necessary keys. We've already created the Discord token; now it's time to create your OpenAI API Key, if you don't already have one. This key is important for integrating ChatGPT with Discord.

<br>

### Create your OpenAI API Key

To use Jab's services in Discord, obtaining an OpenAI API key is critical. This key can be generated from your existing OpenAI account; if you don't have an OpenAI account, easily create one by visiting this [link][openai-signup]. This secret key is essential for authentication verification. Below is a detailed guide on acquiring the key:

1. Log in to your [OpenAI account][openai-account].
2. Search for the "Create new secret key" option and click on it.

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/jabb/assets/48920263/74ea4a10-ba95-4f00-8563-5c814bc172e5" draggable="false" ondragstart="return false; "alt="Create new secret key" title="Create new secret key" width="750px" />
  </picture>
</p>

After acquiring the [API Key][openai-API], integrating ChatGPT's services into Discord is fairly simple. Remember, once you copy the key and close the pop-up, you cannot access it again. Therefore, store the key in a secure location.
<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/jabb/assets/48920263/9f39d552-eae7-43e1-b297-7255356e801e" draggable="false" ondragstart="return false; "alt="OpenAI API Key" title="OpenAI API Key" width="750px" />
  </picture>
</p>

<br><br>

## Setting Up Jabb

Now you've created the application and gathered all the necessary keys to operate the bot. You need to download the repository via curl using the following shell command:

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/nicolodiamante/jabb/HEAD/bootstrap.sh)"
```

Alternatively, you can manually clone the repository with this command:

```shell
git clone https://github.com/nicolodiamante/jabb.git ~/jabb
```

Once the repository is cloned or downloaded, navigate to the directory and launch the installation script:

```shell
source install.sh
```

The role of this script is to ensure Node is installed on your computer. If Node isn't found, the script attempts to install it using [Homebrew][Homebrew]. If Homebrew also isn't detected, the script installs Homebrew before proceeding to install [Node.js][nodejs]. Post successful Node installation, the script sets up and installs the required dependencies - [discord.js][discord.js], [dotenv][dotenv], [openai][openai], and [nodemon][nodemon] - using [npm][npm]. This process also creates the .env file. Upon successful installation of these dependencies, you can start modifying and adding your keys to the .env file.

```shell
# Discord
DISCORD_TOKEN=
DISCORD_CHANNEL_ID=

# OpenAI
OPENAI_ORG=
OPENAI_API_KEY=
```

Start by inputting the Discord token you've already acquired. Second, although optional, it's recommended to set the Discord channel ID to limit channel usage. When `DISCORD_CHANNEL_ID` is set, the bot will operate solely in the defined channel. If it's left undefined, the bot can function across all channels.

To restrict the bot to a specific channel, obtain the ID of that channel by:

1. Right-clicking on the desired channel.
2. Choosing the "Copy ID" option.

This gives you the ID that confines the bot to the chosen channel.

Next, fill in the `OPENAI_ORG`. To locate your OpenAI organization number, visit [OpenAI Organization settings][org-settings] and copy the Organization ID. Lastly, add the previously collected OpenAI API Key.

<br><br>

## Deploy Jabb in your Discord server

Once you've set up the bot and keyed in your access details, follow these steps to deploy it, open the terminal, navigate to the Jabb directory, and initiate the bot. You can do this by executing the following command:

```shell
nodemon index.js
```

If everything was set up correctly, a message stating "Jabb is now online on Discord!" will appear. This message signifies that your bot is online and ready to operate in your Discord server.

<br><br>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/jabb/assets/48920263/8cbde783-fcf4-462c-96f9-f8134d633701" draggable="false" ondragstart="return false;" alt="jabb Deployed" title="jabb Deployed" />
    <img src="https://github.com/nicolodiamante/jabb/assets/48920263/a10ba20b-8698-4219-b6d0-9c44c830e6c5" draggable="false" ondragstart="return false; "alt="jabb Deployed" title="jabb Deployed" width="650px" />
  </picture>
</p>

<br><br>

## Conclusion

Through the integration of AI chatbots like Jabb, the user experience on Discord can be significantly improved. Jabb, powered by ChatGPT's innovative capabilities, injects vibrancy into your Discord server by delivering valuable and entertaining content to users. These highly sophisticated and appealing AI bots have the potential to boost user interaction and engagement within your Discord communities. By harnessing the power of AI technology through bots like Jabb, you can cultivate a lively, knowledgeable, and captivating atmosphere for all server members.

<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/jabb/assets/48920263/b432dc05-6080-4918-8b43-5288b5870921" draggable="false" ondragstart="return false;" alt="Discord Chat" title="Discord Chat" width="1000px" />
  </picture>
</p>

<br><br>

## Notes

### Resources

#### Discord

- [Discord][discord]
- [Discord Developer Portal][discord-dev]

#### OpenAI

- [OpenAI Documentation][intro]
- [OpenAI Examples][examples]
- [OpenAI Models][openai-models]
- [OpenAI Usage API][chat-usage]

#### Node.js

- [Node][nodejs]
- [npm][npm]

### Contribution

Thank you for considering the use of this chatbot. Your feedback in improving Jabb would be much appreciated. In case you run into any issues or bugs, please report them on the [issues page][issues].
<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/jabb/assets/48920263/fd955a8a-a4c7-495a-93b3-72848a271e6c" draggable="false" ondragstart="return false;" /></>
  </picture>
</p>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/jabb/assets/48920263/4c20aa4f-77ea-46ca-a629-9a9b67b055e8" draggable="false" ondragstart="return false;" alt="Nicol&#242; Diamante" title="Nicol&#242; Diamante" width="17px" />
  </picture>
</p>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/jabb/assets/48920263/5c5c50be-7407-4d97-9b09-81dd6aecbe10" draggable="false" ondragstart="return false;" alt="MIT License" title="MIT License" />
    <img src="https://github.com/nicolodiamante/jabb/assets/48920263/d9e5cbc8-b8a1-4ee9-a117-1454ecf370ac" draggable="false" ondragstart="return false; "alt="MIT License" title="MIT License" width="95px" />
  </picture>
</p>

<!-- Link labels: -->

[discord]: https://discord.com
[chaGPT]: https://openai.com/blog/chatgpt
[openai-account]: https://auth0.openai.com/u/login/identifier?state=hKFo2SBWNUdMbnRYYTFTeFdkNW1rUEY5cHNyUVMxdE9FdjdxYqFur3VuaXZlcnNhbC1sb2dpbqN0aWTZIDJVOVBFOWdJZkw4WEdpbmsxQ1JRRTEydWY5LXlzYUxFo2NpZNkgRFJpdnNubTJNdTQyVDNLT3BxZHR3QjNOWXZpSFl6d0Q
[openai-API]: https://beta.openai.com/account/api-keys
[Homebrew]: https://brew.sh
[nodejs]: https://nodejs.org/en
[npm]: https://docs.npmjs.com
[discord.js]: https://discord.js.org
[dotenv]: https://www.npmjs.com/package/dotenv
[openai]: https://www.npmjs.com/package/openai
[nodemon]: https://nodemon.io
[openai-signup]: https://auth0.openai.com/u/signup/identifier?state=hKFo2SBjY3ExRFozSEdJRVhCQ0hnYkRETjRzM3p3TlV4bjl6a6Fur3VuaXZlcnNhbC1sb2dpbqN0aWTZIFNPWE1oRVdWMm1ZZjU2Rm5UVHcybF9ya3JlU1hCaGd5o2NpZNkgRFJpdnNubTJNdTQyVDNLT3BxZHR3QjNOWXZpSFl6d0Q
[org-settings]: https://platform.openai.com/account/org-settings
[discord-dev]: https://discord.com/developers/applications
[intro]: https://platform.openai.com/docs/introduction
[examples]: https://platform.openai.com/examples
[openai-models]: https://platform.openai.com/docs/models
[chat-usage]: https://platform.openai.com/account/usage
[issues]: https://github.com/nicolodiamante/dispatch/issues
