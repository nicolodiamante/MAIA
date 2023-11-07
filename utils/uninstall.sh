#!/bin/zsh

#
# Uninstall MAIA dependencies.
#

# Defines the PATHs.
TARGET="${HOME}/MAIA"
ENV_VAR="${TARGET}/.env"

# Ask for user confirmation before proceeding.
echo "This will uninstall MAIA dependencies, Node, npm, and Tmux if confirmed."
read -p "Are you sure you want to proceed? (y/N) " confirm
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
  echo "Uninstallation aborted."
  exit 0
fi

# Delete the .env file (optional and should ask the user if they want to).
if [[ -f "${ENV_VAR}" ]]; then
  read -p "Do you want to delete the .env file? This cannot be undone. (y/N) " delete_env
  if [[ "$delete_env" == "y" || "$delete_env" == "Y" ]]; then
    rm -v "${ENV_VAR}"
    echo "Deleted the .env file."
  fi
fi

# Uninstall npm packages.
if [[ -d "${TARGET}/node_modules" ]]; then
  echo "Uninstalling npm dependencies..."
  if ! cd "${TARGET}"; then
    echo "Failed to navigate to ${TARGET}. Uninstallation aborted."
    exit 1
  fi
  npm uninstall $(npm list --parseable --depth=0 | awk -F/ '{print $NF}' | tr '\n' ' ') || {
    echo "Failed to uninstall npm dependencies."
    exit 1
  }
  echo "Dependencies removed."
fi

# Optionally remove Node, npm, and tmux.
read -p "Do you want to uninstall Node, npm, and Tmux? This might affect other projects. (y/N) " uninstall_apps
if [[ "$uninstall_apps" == "y" || "$uninstall_apps" == "Y" ]]; then
  # Uninstall Node and npm.
  if command -v node &> /dev/null; then
    echo 'Uninstalling Node and npm...'
    brew uninstall node || {
      echo "Failed to uninstall Node."
      exit 1
    }
  fi

  # Uninstall tmux.
  if command -v tmux &> /dev/null; then
    echo 'Uninstalling Tmux...'
    brew uninstall tmux || {
      echo "Failed to uninstall Tmux."
      exit 1
    }
  fi
else
  echo "Node, npm, and Tmux remain installed."
fi

echo "Uninstallation complete."
