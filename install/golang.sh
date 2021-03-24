#!/bin/bash

wget -c https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz -O - | sudo tar -xz -C /usr/local
mkdir ~/go
export PATH=$PATH:/usr/local/go/bin

echo '' >> ~/.profile
echo '# Golang' >> ~/.profile
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile