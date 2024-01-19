#!/bin/zsh

#
# Install MAIA dependencies.
#

# Defines the PATHs.
TARGET="${0:h}"
ENV_VAR="${TARGET}/.env"

# Check for Homebrew, if not found then install.
echo "Checking for Homebrew..."
if ! command -v brew &>/dev/null; then
  echo "Homebrew is missing! Installing it..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "Homebrew installed successfully."
else
  echo "Updating Homebrew..."
  brew update
fi

# Check for Node and npm, if not found then install.
echo "\nEnsuring Node.js and npm are installed..."
if ! command -v node &>/dev/null; then
  echo "Node is missing! Installing it..."
  brew install node
  echo "Node.js and npm installed successfully."
fi

# Check for tmux, if not found then install.
echo "\nChecking for tmux..."
if ! command -v tmux &>/dev/null; then
  echo "Tmux is missing! Installing it..."
  brew install tmux
  echo "Tmux installed successfully."
fi

# Navigate to the target directory
echo "\nNavigating to the project directory: ${TARGET}"
if ! cd "${TARGET}"; then
  echo "Error: Failed to navigate to ${TARGET}. Installation aborted." >&2
  exit 1
fi

# Check for npm, if not found then exit.
echo "\nChecking for npm..."
if ! command -v npm &>/dev/null; then
  echo "npm is not installed and is required for the project." >&2
  exit 1
fi

# Install dependencies via npm.
echo "Initializing npm project and installing dependencies..."
if npm init -y &>/dev/null && npm install; then
  echo "Npm project initialized and dependencies installed successfully."
else
  echo "Failed to initialize npm project or install dependencies." >&2
  exit 1
fi

# Create User Credentials if not present.
echo "\nSetting up the .env configuration file..."
if [[ ! -f "${ENV_VAR}" ]]; then
  cat << EOF > "${ENV_VAR}"
#
# Configuration for MAIA - Discord Chatbot.
#

# Discord Settings
DISCORD_TOKEN=                      # Bot authentication token
DISCORD_CHANNEL_ID=                 # Optional: Restrict bot to this channel

# OpenAI Configuration
OPENAI_ORG=                         # OpenAI organization ID
OPENAI_API_KEY=                     # API key for OpenAI

# ChatGPT Configuration
CHATGPT_MODEL=gpt-4-1106-preview    # Model to use for responses
CHATGPT_TEMP=0.86                   # Controls response randomness
CHATGPT_TOP_P=1                     # Controls response diversity
CHATGPT_MAX_TOKENS=512              # Limits response length

# Chat Log Configuration
CHAT_LOG=0                          # Set to 1 to enable chat logging
EOF
  echo "MAIA: .env file created."
else
  echo "MAIA: .env file already exists."
fi

echo "\nMAIA: Setup complete."
