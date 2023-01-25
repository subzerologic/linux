#!/bin/bash
# run this script: bash linux_post_install.sh 

# apt repository
sudo apt update

#  install Gnome Shell Extensions
sudo apt install gnome-shell-extension-manager -y

# Install ddclient on Ubuntu 22.04
sudo apt install ddclient -y

# Install OpenSSH on Ubuntu
sudo apt install openssh-server -y
sudo apt install openssh-client -y

# Install wget
sudo apt install wget -y

# Install OpenVPN
#Source https://ubuntuhandbook.org/index.php/2022/10/setup-openvpn-ubuntu-2204/amp/
sudo wget https://git.io/vpn -O openvpn-install.sh

sudo chmod u+x openvpn-install.sh
sudo bash openvpn-install.sh
