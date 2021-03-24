#!/bin/bash

rm ~/.profile
ln -s ~/.dotfiles/home/profile ~/.profile
ln -s ~/.dotfiles/home/aliases ~/.aliases
ln -s ~/.dotfiles/home/gitconfig ~/.gitconfig

### Update system ###
sudo apt update
sudo apt upgrade -y

sudo apt update

sudo apt install -y vim git obs-studio keepassx npm code lm-sensors zsh

### Working things ###
sh ./install/vscode.sh
sh ./install/docker.sh
sh ./install/google_drive.sh
sh ./install/oh_my_zsh.sh

### Customizations ###
sh ./install/custom_interface.sh
