#!/bin/sh

cp ~/.bashrc .bashrc
cp ~/.bash_profile .bash_profile
cp ~/.bash_osx .bash_osx
cp ~/.inputrc .inputrc
cp ~/.vimrc .vimrc
cp ~/.gvimrc .gvimrc
cp ~/.gitconfig .gitconfig
cp ~/.gitignore_global .gitignore_global
cp ~/.git-completion.bash .git-completion.bash
cp ~/.aspell.en.pws .aspell.en.pws
cp ~/.tmux.conf .tmux.conf
mkdir ./.vim/
cp -rf ~/.vim/colors/ ./.vim/
cp -rf ~/.tmuxinator/ ./
