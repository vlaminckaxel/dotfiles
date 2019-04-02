#!/bin/bash
sudo apt-get install -y ruby
sudo gem install homesick 
homesick clone vlaminckaxel/dotfiles && homesick symlink dotfiles --force
homesick clone vlaminckaxel/dotvim && homesick symlink dotvim
source ~/.bashrc
sudo apt-get install -y exuberant-ctags silversearcher-ag software-properties-common

# vim 8
sudo add-apt-repository -y ppa:jonathonf/vim
sudo apt-get update
sudo apt-get install -y vim
