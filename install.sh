#!/bin/bash

# We don't need return codes for "$(command)", only stdout is needed.
# Allow `[[ -n "$(command)" ]]`, `func "$(command)"`, pipes, etc.
# shellcheck disable=SC2312

set -u

abort() {
  printf "%s\n" "$@" >&2
  exit 1
}

# Fail fast with a concise message when not using bash
# Single brackets are needed here for POSIX compatibility
# shellcheck disable=SC2292
if [ -z "${BASH_VERSION:-}" ]
then
  abort "Bash is required to interpret this script."
fi

echo "Creating shell-tools directory in the user home directory"
mkdir -p $HOME/.shell-tools

echo "Creating the ZSH profile if it doesn't exist"
touch $HOME/.zshrc

echo "Creating the Bash config if it doesn't exist"
touch $HOME/.bashrc

echo "Downloading source files to the shell-tools directory"
curl https://raw.githubusercontent.com/cliffpyles/shell-tools/main/lib/aliases.sh --output $HOME/.shell-tools/aliases.sh --silent
curl https://raw.githubusercontent.com/cliffpyles/shell-tools/main/lib/functions.sh --output $HOME/.shell-tools/functions.sh --silent

echo "Adding the source files to the user profiles"
grep -qxF 'source $HOME/.shell-tools/aliases.sh' $HOME/.zshrc || echo 'source $HOME/.shell-tools/aliases.sh' >> $HOME/.zshrc
grep -qxF 'source $HOME/.shell-tools/functions.sh' $HOME/.zshrc || echo 'source $HOME/.shell-tools/functions.sh' >> $HOME/.zshrc
grep -qxF 'source $HOME/.shell-tools/aliases.sh' $HOME/.bashrc || echo 'source $HOME/.shell-tools/aliases.sh' >> $HOME/.bashrc
grep -qxF 'source $HOME/.shell-tools/functions.sh' $HOME/.bashrc || echo 'source $HOME/.shell-tools/functions.sh' >> $HOME/.bashrc