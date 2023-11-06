#!/bin/sh

#
# Install MAIA dependencies.
#

# Defines the PATHs.
TARGET="${HOME}/MAIA"
ENV_VAR="${TARGET}/.env"

# Check for Homebrew, if not found then install.
echo 'Checking for Homebrew...'
if ! command -v brew &> /dev/null; then
  echo 'Brew is missing! Installing it...'

  # Basic error handling.
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Check for Node, if not found then install.
if ! command -v node &> /dev/null; then
  echo 'Node is missing! Installing it...'
  brew install node
fi

# Check for Tmux, if not found then install.
if ! command -v tmux &> /dev/null; then
  echo 'Tmux is missing! Installing it...'
  brew install tmux
fi

# Install dependencies via npm.
if ! command -v npm &> /dev/null; then
  echo 'npm is missing! Installing npm and dependencies...'
  npm install && cd "${TARGET}" && npm init -y &> /dev/null && npm install
else
  echo 'Installing dependencies via npm...'
  cd "${TARGET}" && npm init -y &> /dev/null && npm install
fi

# User Credentials.
[[ ! -f "${ENV_VAR}" ]]; then
cat << EOF > "${ENV_VAR}"
#
# Configuration for MAIA - Discord Chatbot.
#

# Discord Settings
DISCORD_TOKEN=                    # Bot authentication token
DISCORD_CHANNEL_ID=               # Optional: Restrict bot to this channel

# OpenAI Configuration
OPENAI_ORG=                       # OpenAI organization ID
OPENAI_API_KEY=                   # API key for OpenAI

# ChatGPT Configuration
CHATGPT_MODEL=gpt-4               # Model to use for responses
CHATGPT_TEMP=0.86                 # Controls response randomness
CHATGPT_TOP_P=1                   # Controls response diversity
CHATGPT_MAX_TOKENS=512            # Limits response length

# Chat Log Configuration
CHAT_LOG=0                        # Set to 1 to enable chat logging
EOF
else
  echo 'MAIA: .env file already exists.'
fi
