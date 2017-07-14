#!/bin/bash
sudo apt-get install -y ruby
sudo gem install homesick 
homesick clone nbraem/dotfiles && homesick symlink dotfiles --force
homesick clone nbraem/dotvim && homesick symlink dotvim
source ~/.bashrc
sudo apt-get install exuberant-ctags silversearcher-ag
