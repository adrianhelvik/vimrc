#!/usr/bin/env bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
             https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln vimrc ~/.vimrc

vim +PlugInstall +qall

# Compile Command-T
cd ~/.vim/plugged/command-t/ruby/command-t
ruby extconf.rb
make
