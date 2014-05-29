#!/bin/bash
sudo gem install homesick
homesick clone nbraem/dotfiles && homesick symlink dotfiles --force
homesick clone nbraem/dotvim && homesick symlink dotvim
source ~/.bashrc
