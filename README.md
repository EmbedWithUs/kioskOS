# mirrorOS
Interactive Mirror operating system and settings

# To Install

- Download image of [Raspian Jesse Lite](https://downloads.raspberrypi.org/raspbian_lite_latest) and load onto appropriate SD card
- Place into Raspberry Pi and start.

## Initial Setup through Raspi-Config
- Run through initial settings setup with raspi-config `sudo raspi-config`
- You will want to set your localization settings
- Enable SSH
- Expand the root partition
- and set the boot to "Autologin on Console (B2)"

## Setup Network Settings
View [Raspberry Pi Docs](https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md) for more details. 
- Edit wpa_supplicant config file `sudo nano /etc/wpa_supplicant/wpa_supplicant.conf`
- Add the following lines and edit with your network information.
```
network={
    ssid="testing"
    psk="testingPassword"
}
```
- Reboot `sudo reboot`

## Install OS Depedencies

Current Dependencies
 - On Raspian Jessie Lite
 - Midori - A minimal, lightweight browser
 - matchbox-window-manager - A lightweight window manager
 - x11-xserver-utils
 - unclutter - Used to hide the cursor
 - xinit - Allows starting X Display Server
 - fbi - FrameBuffer Image Viewer, Used for initial [splashscreen](https://blog.qruizelabs.com/2014/04/29/raspberrypi-kiosk-matchbox-uzbl/).
