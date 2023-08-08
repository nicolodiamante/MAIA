#!/bin/sh

#
# Install Jabb dependencies
#

# Defines the PATHs.
ROOT=$(dirname "$0")
TARGET="${ROOT}/jabb"
ENV_VAR=".env"

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
  touch "${ENV_VAR}" &&
cat << EOF >> "${ENV_VAR}"
#
# Environment variables for ChatGPT Bot.
#

# Discord
DISCORD_TOKEN=
DISCORD_CHANNEL_ID=

# OpenAI
OPENAI_ORG=
OPENAI_API_KEY=

# ChatGPT
CHATGPT_MODEL=gpt-4
CHATGPT_TEMP=0.86
CHATGPT_TOP_P=1
CHATGPT_MAX_TOKENS=1024
CHATGPT_PROMPT=CHATGPT_PROMPT
EOF
else
  echo 'jabb: .env file already exists.'
fi
