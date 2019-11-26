#!/bin/bash
sudo apt update -y
sudo apt install git-all -y

wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
sudo rm gitkraken-amd64.deb