#!/bin/bash

ROOT=$(git rev-parse --show-toplevel)

## install vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## install the dotfiles

ln -s $ROOT/vimrc ~/.vimrc
ln -s $ROOT/zshrc ~/.zshrc

## install vim plugins

vim +PlugInstall

