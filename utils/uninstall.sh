#!/bin/sh

#
# Uninstall MAIA dependencies.
#

# Defines the PATHs.
TARGET="${HOME}/MAIA"
ENV_VAR="${TARGET}/.env"

# Ask for user confirmation before proceeding.
read -p "Are you sure you want to uninstall MAIA dependencies? (y/N) " confirm
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
  echo "Uninstallation aborted."
  exit 0
fi

# Delete the .env file (optional and should ask the user if they want to).
read -p "Do you want to delete the .env file? (y/N) " delete_env
if [[ -f "${ENV_VAR}" && ("$delete_env" == "y" || "$delete_env" == "Y") ]]; then
  rm "${ENV_VAR}"
  echo "Deleted the .env file."
fi

# Uninstall npm packages.
if [[ -d "${TARGET}/node_modules" ]]; then
  echo "Uninstalling npm dependencies..."
  cd "${TARGET}" && npm uninstall $(npm list --parseable --depth=0 | awk -F/ '{print $NF}' | tr '\n' ' ')
  echo "Dependencies removed."
fi

# Optionally remove Node, npm, and Tmux.
read -p "Do you want to uninstall Node, npm, and Tmux? This might affect other projects. (y/N) " uninstall_apps
if [[ "$uninstall_apps" == "y" || "$uninstall_apps" == "Y" ]]; then
  # Uninstall Node and npm
  if command -v node &> /dev/null; then
    echo 'Uninstalling Node and npm...'
    brew uninstall node
  fi

  # Uninstall Tmux
  if command -v tmux &> /dev/null; then
    echo 'Uninstalling Tmux...'
    brew uninstall tmux
  fi
else
  echo "Node, npm, and Tmux remain installed."
fi

echo "Uninstallation complete."
