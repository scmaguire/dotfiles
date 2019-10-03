#!/bin/bash

echo "Installing dotfiles..."
echo "Creating symlinks..."

# install zsh
echo "Installing zsh config..."
#cp .zshrc ~/.zshrc
ln -s .zshrc ~/.zshrc
#cp .zsh_aliases ~/.zsh_aliases
ln -s .zsh_aliases ~/.zsh_aliases

# install vim configuration
echo "Installing vim config..."
#cp .vimrc ~/.vimrc
ln -s .vimrc ~/.vimrc

# install tmux configuration
echo "Installing tmux config..."
#cp .tmux.conf ~/.tmux.conf
ln -s .tmux.conf ~/.tmux.conf



