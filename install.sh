#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade

# Setup network settings
# /etc/network/interfaces

# Enter raspi-config "sudo raspi-config"
# Set Localization settings
# Enable SSH
# Expand Root Partition
# Set Autologin on Console (B2)

# Install Dependencies
# Must have Raspbian Jessie Lite image
# midori - Minimal, lightweight Browser
# matchbox-window-manager - Window Manager
# x11-xserver-utils - Interaction with hardware
# unclutter - hide the cursor
# xinit - allows starting X Display server.
# fbi - FrameBuffer Image viewer. For splashscreen. https://blog.qruizelabs.com/2014/04/29/raspberrypi-kiosk-matchbox-uzbl/
sudo apt-get install midori matchbox-window-manager x11-xserver-utils unclutter xinit fbi

# Install NodeJS
wget http://node-arm.herokuapp.com/node_latest_armhf.deb
sudo dpkg -i node_latest_armhf.deb

# Install Node Dependencies
npm install -g nodemon # Persistant watching of server and restart on failure.

# Apt-Get Cleanup
sudo apt-get clean

###
# Make it executable "sudo chmod +x /home/pi/startkiosk.sh"
# Update /home/pi/.bashrc
###
# if [ -z "${SSH_TTY}" ]; then
#   xinit ~/startkiosk.sh
# fi
###
