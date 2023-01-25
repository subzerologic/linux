# apt repository
apt update

#  install Gnome Shell Extensions
apt -y install gnome-shell-extension-manager

# Install ddclient on Ubuntu 22.04
apt -y install ddclient

# Install OpenSSH on Ubuntu
apt -y install openssh-server
apt -y install openssh-client

# Install wget
apt -y install wget

# Install OpenVPN
#Source https://ubuntuhandbook.org/index.php/2022/10/setup-openvpn-ubuntu-2204/amp/
wget https://git.io/vpn -O openvpn-install.sh

chmod u+x openvpn-install.sh
bash openvpn-install.sh
