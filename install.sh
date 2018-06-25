#!/bin/sh

echo "Setting up your Mac..."

# Ask for the administrator password upfront
sudo -v

# Install all available updates
sudo softwareupdate -ia --verbose

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

INSTALLERS=(
  xcode
  homebrew
  shell
  # mackup
  development
  # macos-preferences
)

# Sources all the preference files
function source_installers {
  declare -a files=("${!1}")

  for file in "${files[@]}"; do
    file="${2}${file}.sh"

    [ -r "$file" ] && [ -f "$file" ] && source "$file"
  done;
}

source_installers INSTALLERS[@] "installers/"
