#!/bin/bash

sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get update
sudo apt-get install google-drive-ocamlfuse

mkdir -p ~/GoogleDrive/cristian.suarez
echo '# Auto mount google drive directory' >> ~/.profile
echo 'google-drive-ocamlfuse ~/GoogleDrive/cristian.suarez' >> ~/.profile


