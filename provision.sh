#!/bin/bash

timedatectl set-timezone America/New_York

apt-get update
apt-get -y install git

#last pass cli
cd ~
apt-get -y install openssl libcurl4-openssl-dev libxml2 libssl-dev libxml2-dev pinentry-curses xclip
git clone https://github.com/lastpass/lastpass-cli.git
cd ~/lastpass-cli
make
make install

#fzf
cd ~
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#copy .profile
cd ~
cp /vagrant/.profile ~/.profile
source .profile

