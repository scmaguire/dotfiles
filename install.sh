#!/bin/bash

echo "Installing dotfiles..."
echo "Creating symlinks..."

echo "Installing zsh config..."
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.zsh_aliases ~/.zsh_aliases

echo "Installing git config..."
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

echo "Installing vim config..."
ln -s ~/.dotfiles/.vimrc ~/.vimrc

echo "Installing tmux config..."
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

echo "Symlinks generated successfully!"