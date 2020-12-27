#!/bin/bash

#Grab Updates
git pull

#Add new apps to menu
cp /home/pi/webapps/DesktopFiles/* /home/pi/.local/share/applications/


sudo apt install fortune lolcat cowsay telnet nyancat cmatrix -y

#Install/Update finished
clear

echo ""
echo ""

echo "Web Apps installed to /home/pi/webapps"
echo ""
echo "Launchers for Web Apps are in MENU -> OTHER"
echo ""
echo ""
echo ""