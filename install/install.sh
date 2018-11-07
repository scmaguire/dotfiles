#!/bin/bash


echo "Installing dotfiles..."


# install tmux configuration
echo "Installing tmux config..."
cp ../tmux/.tmux.conf ~/.tmux.conf

# install vim configuration
echo "Installing vim config..."
cp ../vim/.vimrc ~/.vimrc

# install zsh
echo "Installing zsh config..."
cp ../zsh/.zshrc ~/.zshrc



# TODO: switch to symlinks?

