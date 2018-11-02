#!/usr/bin/env bash

# Hide "last login" line when starting a new terminal session
touch $HOME/.hushlogin

# Add shells installed by Homebrew
sudo bash -c "which zsh bash >> /etc/shells"

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install oh-my-zsh
rm -rf $HOME/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
