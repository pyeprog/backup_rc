#! /bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~
pip3 install jedi
pip3 install black
vim +PluginInstall +qa
