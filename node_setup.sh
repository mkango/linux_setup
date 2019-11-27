#!/bin/bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
nvm install node
nvm install --lts

sudo apt update -y

sudo apt install nodejs -y

sudo npm i -g npx

version=$(nodejs -v)
echo -e "nodejs version: $version"

version=$(npm -v)
echo -e "npm version: $version"