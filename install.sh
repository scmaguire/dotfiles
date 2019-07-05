#!/bin/bash

echo "Installing dotfiles..."

# install zsh
echo "Installing zsh config..."
cp .zshrc ~/.zshrc
cp .zsh_aliases ~/.zsh_aliases

# install vim configuration
echo "Installing vim config..."
cp .vimrc ~/.vimrc

# install tmux configuration
echo "Installing tmux config..."
cp .tmux.conf ~/.tmux.conf


# TODO: switch to symlinks?

