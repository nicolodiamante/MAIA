#!/bin/sh

SOURCE=https://github.com/nicolodiamante/jabb
TARBALL="${SOURCE}/tarball/master"
TARGET="${HOME}/jabb"
TAR_CMD="tar -xzv -C ${TARGET} --strip-components 1 --exclude '{.gitignore}'"
INSTALL=./utils/install.sh

is_executable() {
  type "$1" > /dev/null 2>&1
}

# Checks which executable is available then downloads and installs.
if is_executable "git"; then
  CMD="git clone ${SOURCE} ${TARGET}"
elif is_executable "curl"; then
  CMD="curl -L ${TARBALL} | ${TAR_CMD}"
elif is_executable "wget"; then
  CMD="wget --no-check-certificate -O - ${TARBALL} | ${TAR_CMD}"
fi

if [[ -z "$CMD" ]]; then
  echo 'No git, curl or wget available. Aborting!'
  exit 1
else
  echo 'Installing jabb...'
  mkdir -p "${TARGET}" && eval "${CMD}" && cd "${TARGET}"

  if [[ -f "${INSTALL}" ]]; then
    source "${INSTALL}"
  else
    echo "${INSTALL} not found. Aborting!"
    exit 1
  fi
fi
