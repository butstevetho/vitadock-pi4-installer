#!/bin/bash -e

#read -p "Hostname [$(hostname)]: " HOSTNAME
sudo raspi-config nonint do_hostname ${HOSTNAME:-$(hostname)}

CURRENT_PRETTY_HOSTNAME=$(hostnamectl status --pretty)
read -p "Choose a 'pretty hostname' (will be seen by vita) (ENTER for default:[${CURRENT_PRETTY_HOSTNAME:-Raspberry Pi}]): " PRETTY_HOSTNAME
sudo hostnamectl set-hostname --pretty "${PRETTY_HOSTNAME:-${CURRENT_PRETTY_HOSTNAME:-Raspberry Pi}}"

echo "Updating packages"
sudo apt update
sudo apt upgrade -y

echo "Installing components"
sudo /home/pi/VitaDock/files/bluetooth/./install-bluetooth.sh
sudo /home/pi/VitaDock/files/bluetooth/./install-upnp.sh
