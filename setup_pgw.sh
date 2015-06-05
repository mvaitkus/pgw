#!/bin/bash

sudo apt-get install python3-pip
sudo pip3 install pexpect argcomplete
mkdir -p ~/bin
ln -s `pwd`/pgw ~/bin/pgw
cp -n .pgw_config ~/

echo -e '\n# Registers autocompleter for pgw' >> ~/.bashrc
echo 'eval "$(register-python-argcomplete pgw)"' >> ~/.bashrc

