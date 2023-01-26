#!/bin/bash
# run this script:
#sudo wget https://github.com/subzerologic/linux/edit/main/linux_post_install.sh -O linuxPostInstall.sh
#sudo chmod u+x linux_post_install.sh
#sudo bash linux_post_install.sh

# apt repository
sudo apt update

#  install Gnome Shell Extensions
sudo apt install gnome-shell-extension-manager -y

# Install ddclient on Ubuntu 22.04
sudo apt install ddclient

# Install OpenSSH on Ubuntu
sudo apt install openssh-server -y
sudo apt install openssh-client -y

# Change default Port to 9922 and restart ssh
sudo echo "Port 9922" >> /etc/ssh/sshd_config
sudo systemctl restart sshd

# Allow ssh port on iptables
sudo iptables -A INPUT -p tcp --dport 9922 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -p tcp --sport 9922 -m conntrack --ctstate ESTABLISHED -j ACCEPT

# Install OpenVPN
#Source https://ubuntuhandbook.org/index.php/2022/10/setup-openvpn-ubuntu-2204/amp/
sudo wget https://git.io/vpn -O openvpn-install.sh
sudo chmod u+x openvpn-install.sh
sudo bash openvpn-install.sh