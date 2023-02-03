#!/bin/bash
# run this script:
#sudo wget -O linuxPostInstall.sh https://raw.githubusercontent.com/subzerologic/linux/main/linuxPostInstall.sh 
#sudo chmod u+x linuxPostInstall.sh
#sudo bash linuxPostInstall.sh

# apt repository
sudo apt update

#  install Gnome Shell Extensions
sudo apt install gnome-shell-extension-manager -y

# Install ddclient on Ubuntu 22.04
sudo apt install ddclient

# Install OpenSSH on Ubuntu
sudo apt install openssh-server -y
sudo apt install openssh-client -y

#Manually steps to change ssh port
# nano /etc/ssh/sshd_config and uncommet out the following change the port to what you want it set to
#Port 9922
#AddressFamily any
#ListenAddress 0.0.0.0
#ListenAddress ::

# Install OpenVPN
#Source https://ubuntuhandbook.org/index.php/2022/10/setup-openvpn-ubuntu-2204/amp/
sudo wget -O openvpn-install.sh https://git.io/vpn 
sudo chmod u+x openvpn-install.sh
sudo bash openvpn-install.sh

#Adding the ufw rules
ufw allow 9922 tcp
ufw allow 3389 tcp
ufw allow out on tun0
ufw allow in on tun0
ufw enable
