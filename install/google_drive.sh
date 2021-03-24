#!/bin/bash

sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get update
sudo apt-get install google-drive-ocamlfuse

read -p "Name of the directory where the drive will be mounted ~/Documents/GoogleDrive/[DIR_NAME] " DIR_NAME

mkdir -p "~/Documents/GoogleDrive/$DIR_NAME"
echo '' >> ~/.profile
echo '# Auto mount google drive directory' >> ~/.profile
echo "google-drive-ocamlfuse ~/Documents/GoogleDrive/$DIR_NAME &" >> ~/.profile


