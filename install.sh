#!/usr/bin/env bash

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
             https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Link vimrc in this folder with the one in your home folder
ln vimrc ~/.vimrc

# Install all plugins
echo 'An error message will occur, but installation will be successful'
vim +PlugInstall +qall

# Compile Command-T
cd ~/.vim/plugged/command-t/ruby/command-t
ruby extconf.rb
make
