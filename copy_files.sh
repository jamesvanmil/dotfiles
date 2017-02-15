#!/bin/sh

cp ~/.bashrc .bashrc
cp ~/.bash_profile .bash_profile
cp ~/.vimrc .vimrc
cp ~/.gvimrc .gvimrc
cp ~/.gitconfig .gitconfig
cp ~/.gitignore_global .gitignore_global
cp ~/.aspell.en.pws .aspell.en.pws
cp ~/.tmux.conf .tmux.conf
mkdir ./.vim/
cp -rf ~/.vim/colors/ ./.vim/colors/
cp -rf ~/.tmuxinator/ ./.tmuxinator/
