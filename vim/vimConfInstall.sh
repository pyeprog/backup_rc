#! /bin/bash

pip3 install autopep8 yapf jedi --user
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~
vim +PluginInstall +qa
