#!/bin/bash

ROOT=$(git rev-parse --show-toplevel)

## install vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## install the dotfiles

append_old() {
    mv $1 $1.old
}

for f in "vimrc zshrc"
do
    local dotname=".$f"
    append_old "~/$dotname"
    ln -s $ROOT/$f ~/$dotname
done

## install vim plugins

vim +PlugInstall +qall

