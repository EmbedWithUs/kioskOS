#!/bin/bash

# Do initial update and upgrade
sudo apt-get update
sudo apt-get dist-upgrade

# Install operating system dependencies
sudo apt-get install midori matchbox-window-manager x11-xserver-utils unclutter xinit fbi

# Install NodeJS
wget http://node-arm.herokuapp.com/node_latest_armhf.deb
sudo dpkg -i node_latest_armhf.deb

# Install Node Dependencies
npm install -g nodemon # Persistant watching of server and restart on failure.

# Apt-Get Cleanup
sudo apt-get clean

# Move script to home directory and set permissions
mv ./startkiosk.sh /home/pi/startkiosk.sh
sudo chmod +x /home/pi/startkiosk.sh

# Move script to home directory
mv ./.bashrc /home/pi/.bashrc
