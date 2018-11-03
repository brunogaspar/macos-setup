#!/usr/bin/env bash

# Hide "last login" line when starting a new terminal session
touch $HOME/.hushlogin

# Add shells installed by Homebrew
sudo bash -c "which zsh bash >> /etc/shells"

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Git related settings
rm -f $HOME/.gitignore $HOME/.gitconfig
ln -s $HOME/.dotfiles/git/gitignore $HOME/.gitignore
ln -s $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig

# Install oh-my-zsh
rm -rf $HOME/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
