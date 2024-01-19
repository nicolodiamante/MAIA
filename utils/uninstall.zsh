#!/bin/zsh

#
# Uninstall MAIA dependencies.
#

# Defines the PATHs.
TARGET="${0:h}"
ENV_VAR="${TARGET}/.env"

# Ask for user confirmation before proceeding.
echo "This will uninstall MAIA dependencies: Node, npm, and Tmux."
read -q "REPLY?Are you sure you want to proceed? [y/N] "
echo ""
if [[ ! "$REPLY" =~ ^[Yy]$ ]]; then
  echo "Uninstall aborted by the user."
  exit 0
fi

# Delete the .env file (optional and should ask the user if they want to).
if [[ -f "${ENV_VAR}" ]]; then
  read -q "REPLY?Do you want to delete the .env file? This cannot be undone. [y/N] "
  echo ""
  if [[ "$REPLY" =~ ^[Yy]$ ]]; then
    rm -v "${ENV_VAR}"
    echo "MAIA: .env file deleted."
  else
    echo "MAIA: Keeping .env file."
  fi
fi

# Remove npm packages.
if [[ -d "${TARGET}/node_modules" ]]; then
  echo "\nNavigating to the project directory: ${TARGET}"
  if ! cd "${TARGET}"; then
    echo "Failed to navigate to ${TARGET}" >&2
    exit 1
  fi

  echo "Attempting to remove all npm dependencies in the project..."
  if ! npm uninstall $(npm list --parseable --depth=0 | awk -F/ '{print $NF}' | tr '\n' ' '); then
    echo "Failed to remove npm dependencies." >&2
    exit 1
  else
    echo "Npm dependencies successfully removed."
  fi
fi

# Optionally remove Node, npm, and tmux.
read -q "REPLY?Do you want to uninstall Node, npm, and Tmux? This might affect other projects. [y/N] "
echo ""
if [[ "$REPLY" =~ ^[Yy]$ ]]; then
  # Uninstall Node and npm.
  if command -v node &>/dev/null; then
    echo "Uninstall Node..."
    if ! brew uninstall node; then
      echo "Failed to uninstall Node." >&2
      exit 1
    else
      echo "Node uninstall complete."
    fi
  fi

  # Uninstall tmux.
  if command -v tmux &>/dev/null; then
    echo "Uninstall Tmux..."
    if ! brew uninstall tmux; then
      echo "Failed to remove Tmux." >&2
      exit 1
    else
      echo "Tmux uninstall complete."
    fi
  fi
else
  echo "Node, npm, and Tmux remain installed."
fi

echo "\nMAIA: Uninstall complete."
