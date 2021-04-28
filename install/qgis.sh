#!/bin/sh

# source:
# https://www.qgis.org/es/site/forusers/alldownloads.html#debian-ubuntu

sudo apt install -y gnupg software-properties-common

wget -qO - https://qgis.org/downloads/qgis-2020.gpg.key | sudo gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import

sudo chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg

sudo add-apt-repository "deb https://qgis.org/ubuntu $(lsb_release -c -s) main"

sudo apt update

sudo apt install -y qgis qgis-plugin-grass
