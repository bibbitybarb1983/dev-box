#!/bin/bash

#this script runs as root

timedatectl set-timezone America/New_York

apt-get update
apt-get -y install git

# uses su to ensure that the setup script is executed by the vagrant user because the Vagrant Shell provisioner runs in 
# a sudo environment which causes the script to be executed by the root user
su -c "/vagrant/provision-vagrant.sh" vagrant

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

su -c "cp /vagrant/.profile ~/.profile" vagrant
source .profile

