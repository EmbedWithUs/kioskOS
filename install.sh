#!/bin/bash

# Do initial update and upgrade
sudo apt-get update
sudo apt-get dist-upgrade

# Install operating system dependencies
sudo apt-get install midori matchbox-window-manager x11-xserver-utils unclutter xinit fbi

# Install NodeJS
# For ARMv6 Install via apt-get
sudo apt-get install nodejs
# For newer hardware
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt install nodejs

# Install Node Dependencies
npm install -g nodemon # Persistant watching of server and restart on failure.

# Apt-Get Cleanup
sudo apt-get clean

# Move script to home directory and set permissions
mv ./startkiosk.sh /home/pi/startkiosk.sh
sudo chmod +x /home/pi/startkiosk.sh

# Move script to home directory
mv ./.bashrc /home/pi/.bashrc
