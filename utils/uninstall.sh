#!/bin/zsh

#
# Uninstall MAIA dependencies.
#

# Defines the PATHs.
TARGET="${HOME}/MAIA"
ENV_VAR="${TARGET}/.env"

# Ask for user confirmation before proceeding.
echo "This will uninstall MAIA dependencies, Node, npm, and Tmux if confirmed."
read -q "REPLY?Are you sure you want to proceed? [y/N] "
echo ""
if [[ ! "$REPLY" =~ ^[Yy]$ ]]; then
  echo "Uninstallation aborted."
  exit 0
fi

# Delete the .env file (optional and should ask the user if they want to).
if [[ -f "${ENV_VAR}" ]]; then
  read -q "REPLY?Do you want to delete the .env file? This cannot be undone. [y/N] "
  echo ""
  if [[ "$REPLY" =~ ^[Yy]$ ]]; then
    rm -v "${ENV_VAR}"
    echo "Deleted the .env file."
  else
    echo "The .env file was not deleted."
  fi
fi

# Uninstall npm packages.
if [[ -d "${TARGET}/node_modules" ]]; then
  echo "Uninstalling npm dependencies..."
  if ! cd "${TARGET}"; then
    echo "Failed to navigate to ${TARGET}. Uninstallation aborted." >&2
    exit 1
  fi

  echo "Attempting to uninstall all npm dependencies in the project..."
  if ! npm uninstall $(npm list --parseable --depth=0 | awk -F/ '{print $NF}' | tr '\n' ' '); then
    echo "Failed to uninstall npm dependencies." >&2
    exit 1
  else
    echo "Npm dependencies successfully uninstalled."
  fi
fi

# Optionally remove Node, npm, and tmux.
read -q "REPLY?Do you want to uninstall Node, npm, and Tmux? This might affect other projects. [y/N] "
echo ""
if [[ "$REPLY" =~ ^[Yy]$ ]]; then
  # Uninstall Node and npm.
  if command -v node &>/dev/null; then
    echo 'Uninstalling Node and npm...'
    if ! brew uninstall node; then
      echo "Failed to uninstall Node." >&2
      exit 1
    else
      echo "Node and npm uninstalled successfully."
    fi
  fi

  # Uninstall tmux.
  if command -v tmux &>/dev/null; then
    echo 'Uninstalling Tmux...'
    if ! brew uninstall tmux; then
      echo "Failed to uninstall Tmux." >&2
      exit 1
    else
      echo "Tmux uninstalled successfully."
    fi
  fi
else
  echo "Node, npm, and Tmux remain installed."
fi

echo "Uninstallation complete."
