#!/bin/bash

sudo apt install -y docker.io docker-compose

### Configure Docker to use it without sudo ###
sudo groupadd docker
sudo usermod -aG docker $USER
