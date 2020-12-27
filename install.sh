#!/bin/bash

#Grab Updates
git pull

#Add new apps to menu
cp /home/pi/webapps/DesktopFiles/* /home/pi/.local/share/applications/

#Install dependencies for Terminal Diversions
if [ $(dpkg-query -W -f='${Status}' fortune 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt install fortune -y;
fi
if [ $(dpkg-query -W -f='${Status}' lolcat 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt install lolcat -y;
fi
if [ $(dpkg-query -W -f='${Status}' cowsay 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt install cowsay -y;
fi
if [ $(dpkg-query -W -f='${Status}' telnet 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt install telnet -y;
fi
if [ $(dpkg-query -W -f='${Status}' nyancat 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt install nyancat -y;
fi
if [ $(dpkg-query -W -f='${Status}' cmatrix 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt install cmatrix -y;
fi
if [ $(dpkg-query -W -f='${Status}' dnsutils 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt install dnsutils -y;
fi

if [[ -f /home/pi/webapps/TerminalDiversions/first ]]
then
    rm /home/pi/webapps/TerminalDiversions/first
fi

if [[ ! -f /home/pi/.first ]]
then
    sh /home/pi/webapps/TerminalDiversions/rickroll.sh
    touch /home/pi/.first
fi

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