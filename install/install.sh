#!/bin/bash


echo "Installing dotfiles..."


# install tmux configuration
cp ../tmux/.tmux.conf ~/.tmux.conf

# install vim configuration
cp ../vim/.vimrc ~/.vimrc

# install zsh
cp ../zsh/.zshrc ~/.zshrc




