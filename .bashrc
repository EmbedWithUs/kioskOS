#!/bin/bash
# Auto start kiosk when logging into pi with pi user.
# This goes in /home/pi/.bashrc
if [ -z "${SSH_TTY}" ]; then
   xinit ~/startkiosk.sh
fi
