#!/bin/bash

ROOT=$(git rev-parse --show-toplevel)

## install vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## install the dotfiles

append_old() {
    if [ -f $1 -o -d $1 ]; then
        mv "$1" "$1.old"
    elif [ -h $1 ]; then
        rm $1
    fi
}

for f in vimrc zshrc
do
    dotname=".$f"
    append_old ~/$dotname
    ln -s $ROOT/$f ~/$dotname
done

## install vim plugins

vim +PlugInstall +qall

