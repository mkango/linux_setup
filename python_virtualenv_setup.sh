#!/bin/bash

mkdir -p ~/.virtualenvs

sudo apt install python3-pip -y

pip3 --version

pip3 install virtualenv
pip3 install virtualenvwrapper


echo -e "\n" >> ~/.bashrc
echo -e "#Virtualenvwrapper settings:" >> ~/.bashrc
echo -e "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.bashrc
echo -e "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc
echo -e "export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.local/bin/virtualenv" >> ~/.bashrc
echo -e "source $HOME/.local/bin/virtualenvwrapper.sh" >> ~/.bashrc

source ~/.bashrc