#!/usr/bin/env bash

# Add shells installed by Homebrew
sudo bash -c "which zsh bash >> /etc/shells"

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
