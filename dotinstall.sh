#!/bin/bash
sudo gem install homesick
homesick clone nbraem/dotfiles && homesick symlink dotfiles
homesick clone nbraem/dotvim && homesick symlink dotvim
