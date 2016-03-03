#!/bin/bash

#this script runs as root

timedatectl set-timezone America/New_York

apt-get update
apt-get -y install git

# uses su to ensure that the setup script is executed by the vagrant user because the Vagrant Shell provisioner runs in 
# a sudo environment which causes the script to be executed by the root user
su -c "/vagrant/provision-vagrant.sh" vagrant