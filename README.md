<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/MAIA/assets/48920263/cb022e08-697d-4d74-8709-e772cbbd1828" draggable="false" ondragstart="return false;" alt="MAIA" title="MAIA" />
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/96be6946-3dec-47cb-9436-3a965bb53737" draggable="false" ondragstart="return false; "alt="MAIA" title="MAIA" />
  </picture>
</p>

[Discord][discord], a renowned digital platform, has seen massive use in recent years as it combines text, voice, and video communication, bringing people together over common interests. One of its pivotal features is the ability to integrate AI chatbots like [ChatGPT][chaGPT], which can remarkably enhance user experience. Among these, MAIA (Messaging Artificial Intelligent Assistant) is a bot that embeds the power of ChatGPT, ensuring friendliness and utility at its best. The bot not only enlivens your Discord server but also keeps it informed and entertained, ultimately serving as a powerful tool to boost user engagement in your channel. In essence, MAIA serves as a valuable tool for those seeking to leverage AI technology within their Discord communities.

<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/8b5ac9d3-6fcd-42f5-bb4e-66f0e9b0211f" draggable="false" ondragstart="return false; "alt="OpenAI + Discord" title="OpenAI + Discord" width="700px" />
  </picture>
</p>

<br><br>

## Requirements to get MAIA to work within Discord Server

### Create the bot

It's time to construct our Discord bot. To start, visit the [Discord Developers Applications][discord-dev] page. If you're not logged in yet, make sure to sign in. You'll see an option labelled "Create Application" on the right side of the page, click on it, then assign a name to your application. You are free to use any name you like. For example, I'll name mine "MAIA".

<br><br>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/MAIA/assets/48920263/16a4056f-c8f2-41c9-8a82-70163c0c6249" draggable="false" ondragstart="return false;" alt="Create An Application" title="Create An Application" />
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/9f9e8d39-a516-4ebe-b1db-ba4dbe32639d" draggable="false" ondragstart="return false; "alt="Create An Application" title="Create An Application" width="750px" />
  </picture>
</p>

<br><br>

Begin by assigning an avatar to your application. Afterwards, proceed to the "bot" section located on the left-hand side of your screen and click "Create Bot". Once your bot has been created, adjust the following settings according to your preferences:

1. Deactivate the "Public Bot" setting if you wish to prevent others from inviting your bot.

   <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/14d6b9b2-8548-4ea7-963d-44d46cae7c01" draggable="false" ondragstart="return false;" alt="Toggle Off" title="Toggle Off" width="20px" />&nbsp;&nbsp;Public Bot
   <br>

2. Activate all the "Intense Settings":

   <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/d6352a5e-5590-419c-a2dc-2292d3a15aab" draggable="false" ondragstart="return false;" alt="Toggle On" title="Toggle On" width="20px" />&nbsp;&nbsp;Presence Intent

   <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/d6352a5e-5590-419c-a2dc-2292d3a15aab" draggable="false" ondragstart="return false;" alt="Toggle On" title="Toggle On" width="20px" />&nbsp;&nbsp;Server Member Intent

   <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/d6352a5e-5590-419c-a2dc-2292d3a15aab" draggable="false" ondragstart="return false;" alt="Toggle On" title="Toggle On" width="20px" />&nbsp;&nbsp;Message Content Intent
   <br>

3. Select OAuth2, which is on your screen's left, and choose "↳ URL Generator" to create an invitation link for your Discord bot. Within the scope section, select:

   <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/311c17f2-9a5f-4f02-b31a-811157bc69b6" draggable="false" ondragstart="return false;" alt="Check Mark" title="Check Mark" width="20px" />&nbsp;&nbsp;Bot

   <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/311c17f2-9a5f-4f02-b31a-811157bc69b6" draggable="false" ondragstart="return false;" alt="Check Mark" title="Check Mark" width="20px" />&nbsp;&nbsp;Application.commands (If you plan to include `/` commands)
   <br>

   Proceed by navigating to the bot permissions section below and select:

   <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/311c17f2-9a5f-4f02-b31a-811157bc69b6" draggable="false" ondragstart="return false;" alt="Check Mark" title="Check Mark" width="20px" />&nbsp;&nbsp;Send messages
   <br>

   To add the bot to your server, follow the standard procedure as with other bots. After enabling this setting, scroll down to find the generated URL. Copy this URL, then go to your Discord server. Paste the link into the chat and send it. Click the sent link to invite the bot to your server.

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/d2f1dc78-1b88-4ab6-8130-e99c35674dfb" draggable="false" ondragstart="return false;" alt="Discord URL" title="Discord URL" width="750px" />
  </picture>
</p>

4. Lastly, to obtain the bot token, click on "Bot" on the left side of your screen and select "Reset Token". This will produce a long string beneath the bot's username. Ensure you copy it. Once you navigate away, this key won't be accessible again. If lost, you'll have to reset the token.

<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/2c6413e5-299d-4b82-958b-04af59d06c31" draggable="false" ondragstart="return false;" alt="Discord App Token" title="Discord App Token" width="750px" />
  </picture>
</p>

<br><br>

5. After copying the token, open your Discord app and navigate to your server. Paste the token and click on the link—follow the prompted steps to allow your bot into your server. Once you've invited the bot, it will appear on the Member list on your right-hand side; it will be offline initially.

<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/75907a77-f923-462c-8111-caec1d38be2c" draggable="false" ondragstart="return false;" alt="MAIA On Discord" title="MAIA On Discord" width="800px" />
  </picture>
</p>

<br><br>

With the bot now created and added to your Discord server, the next steps are straightforward, but they do involve some specific links and prerequisites for seamless operation. It's time to gather all the necessary keys. We've already created the Discord token; now it's time to create your OpenAI API Key if you don't already have one. This key is important for integrating ChatGPT with Discord.

<br>

### Create your OpenAI API Key

To use MAIA's services in Discord, obtaining an OpenAI API key is critical. This key can be generated from your existing OpenAI account; if you don't have an OpenAI account, easily create one by visiting this [link][openai-signup]. This secret key is essential for authentication verification. Below is a detailed guide on acquiring the key:

1. Log in to your [OpenAI account][openai-account].
2. Search for the "Create new secret key" option and click on it.

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/5172aa7d-7aab-4f1c-8eb2-0f68384b314f" draggable="false" ondragstart="return false; "alt="OpenAI new secret key" title="OpenAI new secret key" width="750px" />
  </picture>
</p>

After acquiring the [API Key][openai-API], integrating ChatGPT's services into Discord is fairly simple. Remember, once you copy the key and close the pop-up, you cannot access it again. Therefore, store the key in a secure location.
<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/fa94413d-c65d-478d-94e8-af3beb11c8a9" draggable="false" ondragstart="return false; "alt="OpenAI API Key" title="OpenAI API Key" width="750px" />
  </picture>
</p>

<br><br>

## Getting Started

Now you've created the application and gathered all the necessary keys to operate the bot. You need to download the repository. Here are the two methods you can choose from:

**Automatic Download via `curl`:** Simply execute the following command in your terminal to quickly download and seamlessly install the utility:

```shell
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/nicolodiamante/MAIA/HEAD/bootstrap.zsh)"
```

**Manual Cloning:** For those who prefer a hands-on approach, you can manually clone the repository to your desired location:

```shell
git clone https://github.com/nicolodiamante/MAIA.git ~/MAIA
```

<br>

### Post-Download Steps

**Directory Navigation & Script Execution:** Navigate to the root directory of the repository, and then execute the installation script using the following command:

```shell
source utils/install.sh
```

**MAIA Configuration:**

Before initiating the script, confirm that your system has Node.js installed. If the script doesn't detect Node.js, it will attempt to install it via [Homebrew][Homebrew]. In the absence of Homebrew, the script will install Homebrew first and then proceed with the [Node.js][nodejs] installation, followed by [tmux][tmux-github].

Once Node.js is up and running, the script will automatically handle the installation of the necessary dependencies which include [discord.js][discord.js], [dotenv][dotenv], [openai][openai], and [nodemon][nodemon] using [npm][npm], the Node.js package manager.

During this setup, a `.env` file is created. This file is crucial as it is where you will enter your configuration settings.

```shell
# Discord Settings
DISCORD_TOKEN=
DISCORD_CHANNEL_ID=
```

Start by entering the Discord token you acquired earlier. If you want MAIA to operate in a specific channel, provide the `DISCORD_CHANNEL_ID`. Leaving it blank means MAIA can respond in any channel on the server.

```shell
# OpenAI Configuration
OPENAI_ORG=
OPENAI_API_KEY=
```

Input the required values for OpenAI settings. This allows MAIA to communicate with OpenAI and generate responses.

```shell
# Chat Log Configuration
CHAT_LOG=0
```

The `CHAT_LOG` configuration determines whether MAIA will log the chats. Enabling this can be useful for debugging or monitoring purposes. By default, it's set to '0', which means logging is disabled.

<br>

### How to Find a Discord Channel's ID

**1. Enable Discord Developer Mode**

Before you can obtain a Discord channel's ID, the Developer Mode needs to be activated. If you're a Discord bot developer, you might have already turned this on. If not, here's how to do it:

- Launch Discord and find the settings icon, represented by a cogwheel, at the bottom left of the screen. It's near your avatar and username.

  <p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/1ddc3402-2959-417f-906d-43243cdd7412" draggable="false" ondragstart="return false; "alt="Discord Settings Icon" title="Discord Settings Icon" width="750px" />
  </picture>
  </p>

- Click on the icon to open the User Settings.
- In the left sidebar, select "Advanced" to access the Advanced Settings.
- In the Advanced Settings, look for the Discord Developer Mode toggle. A green checkmark means it's already enabled. If not, click to turn it on.

<br>

**2. Find and Copy the Channel ID**

- With Developer Mode on, you're set to obtain the channel's ID.
- Locate and select the channel whose ID you want to retrieve.
- On a desktop, right-click the channel name. A menu will pop up with a "Copy ID" option. Selecting this will copy the channel's ID to your clipboard. Refer to the screenshot below for clarity.

- On mobile, press and hold the channel name until a menu surfaces. From this menu, choose "Copy ID" to copy the channel ID.

<br><br>

<p align="center">
<picture>
  <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/7d185acd-3866-46e0-84ea-fdee59169cfc" draggable="false" ondragstart="return false; "alt="Copy Discord Channel ID" title="Copy Discord Channel ID" width="750px" />
</picture>
</p>

<br><br>

With the ID copied, you can use it as needed, like let MAIA know exactly which channel to operate in.

<br>

### Input Your OpenAI Keys

1. **Identify the Organization ID**

- Go to [OpenAI Organization settings][org-settings].
- Locate and copy your OpenAI Organization ID.

<br>

2. **Update .env File**

- In your `.env` file, locate the `OPENAI_ORG` field.
- Paste the copied Organization ID.
- Ensure you've also added the `OPENAI_API_KEY` you previously obtained.

By following these steps, your `.env` file will be correctly configured with OpenAI's details.

<br><br>

## Deploy MAIA in your Discord server

Once you've set up the bot and keyed in your access details, follow these steps to deploy it, open the terminal, navigate to the MAIA directory, and initiate the bot. You can do this by executing the following command:

```shell
maia -s
```

<br><br>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/MAIA/assets/48920263/94e9fb78-e440-4334-a579-1b875f68a1d1" draggable="false" ondragstart="return false;" alt="MAIA Start" title="MAIA Start" />
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/0d99bbd2-2944-4ff0-887a-3f6f268eca2f" draggable="false" ondragstart="return false; "alt="MAIA Start" title="MAIA Start" width="650px" />
  </picture>
</p>

<br><br>

If you have set everything up correctly, you'll see the message: "MAIA session started and detached!" This indicates that a new session named "maia_session" has started on tmux, and your bot is now online, ready to function on your Discord server. To view the active tmux sessions, execute the command below:

```shell
maia -a
```

<br><br>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/MAIA/assets/48920263/7e1e9c68-420e-4dee-8007-030595e4333d" draggable="false" ondragstart="return false;" alt="MAIA Deployed" title="MAIA Deployed" />
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/18455a43-d681-420f-875f-85201dc0b1b6" draggable="false" ondragstart="return false; "alt="MAIA Deployed" title="MAIA Deployed" width="650px" />
  </picture>
</p>

<br><br>

## How to use MAIA

### Starting and Stopping Session

MAIA is designed to function as a smart assistant within the background of your computing environment. Tmux enhances MAIA's operability by allowing it to run independently in the background. This means you can start MAIA, detach from the tmux session, and continue using your terminal for other tasks while MAIA remains active.

There may be instances where you need to pause MAIA's activity—perhaps for maintenance, updates, or simply to temporarily free up system resources. To manage this, MAIA includes simple-to-use commands that enable you to suspend its session and then, when you're ready, resume operation without having to restart the entire program.

In short, tmux is what gives MAIA the ability to work discreetly and persistently, ensuring your Discord interactions are managed efficiently without monopolising your terminal's workspace.

To start or re-attach to the session:

```shell
maia -s
```

To terminate the session:

```shell
maia -k
```

These commands offer you complete autonomy over MAIA's functionality on your system.

### Checking MAIA Session's Status

Post initiation or termination of the MAIA session, it's recommended to verify its status, ensuring its desired operational state:

```shell
maia -r
```

Upon successful execution, a corresponding message will display, showcasing the MAIA session's active or inactive status.

<br><br>

## Conclusion

Through the integration of AI chatbots like MAIA, the user experience on Discord can be significantly improved. MAIA, powered by ChatGPT's innovative capabilities, injects vibrancy into your Discord server by delivering valuable and entertaining content to users. These highly sophisticated and appealing AI bots have the potential to boost user interaction and engagement within your Discord communities. By harnessing the power of AI technology through bots like MAIA, you can cultivate a lively, knowledgeable, and captivating atmosphere for all server members.

<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/01ffb56f-2ff6-4828-91bc-cdd009deca22" draggable="false" ondragstart="return false;" alt="MAIA Discord Chat" title="MAIA Discord Chat" width="1000px" />
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

Thank you for considering the use of this chatbot. Your feedback on improving MAIA would be much appreciated. In case you run into any issues or bugs, please report them on the [issues page][issues].
<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/fd955a8a-a4c7-495a-93b3-72848a271e6c" draggable="false" ondragstart="return false;" /></>
  </picture>
</p>

<p align="center">
  <a href="https://nicolodiamante.com" target="_blank">
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/4c20aa4f-77ea-46ca-a629-9a9b67b055e8" draggable="false" ondragstart="return false;" alt="Nicol&#242; Diamante Portfolio" title="Nicol&#242; Diamante" width="17px" />
  </a>
</p>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/MAIA/assets/48920263/5c5c50be-7407-4d97-9b09-81dd6aecbe10" draggable="false" ondragstart="return false;" alt="MIT License" title="MIT License" />
    <img src="https://github.com/nicolodiamante/MAIA/assets/48920263/d9e5cbc8-b8a1-4ee9-a117-1454ecf370ac" draggable="false" ondragstart="return false; "alt="MIT License" title="MIT License" width="95px" />
  </picture>
</p>

<!-- Link labels: -->

[discord]: https://discord.com
[chaGPT]: https://openai.com/blog/chatgpt
[openai-account]: https://auth0.openai.com/u/login/identifier?state=hKFo2SBWNUdMbnRYYTFTeFdkNW1rUEY5cHNyUVMxdE9FdjdxYqFur3VuaXZlcnNhbC1sb2dpbqN0aWTZIDJVOVBFOWdJZkw4WEdpbmsxQ1JRRTEydWY5LXlzYUxFo2NpZNkgRFJpdnNubTJNdTQyVDNLT3BxZHR3QjNOWXZpSFl6d0Q
[openai-API]: https://beta.openai.com/account/api-keys
[Homebrew]: https://brew.sh
[nodejs]: https://nodejs.org/en
[tmux-github]: https://github.com/tmux/tmux/wiki
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
