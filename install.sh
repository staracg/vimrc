#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y git curl
sudo apt-get install -y build-essential cmake python-dev silversearcher-ag
wget http://tamacom.com/global/global-6.6.3.tar.gz
tar zxvf global-6.6.3.tar.gz
cd global-6.6.3
sudo ./configure
sudo make 
sudo make install
cd
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/staracg/vimrc

cd vimrc
cp .vimrc ~/.vimrc
vim +PluginInstall +qall
cd ~/.vim/bundle/vimproc.vim/ 
sudo make

cd ~/vimrc
sudo apt-get install -y python-fontforge
wget https://github.com/powerline/fonts/raw/master/UbuntuMono/Ubuntu%20Mono%20derivative%20Powerline.ttf
~/.vim/bundle/vim-powerline/fontpatcher/fontpatcher Ubuntu\ Mono\ derivative\ Powerline.ttf
cd
mkdir ~/.fonts
cp vimrc/*Powerline-Powerline.ttf ~/.fonts/
sudo fc-cache -vf
vim +PowerlineClearCache +qall
cp -rf vimrc/snippets ~/.vim/
