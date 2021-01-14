#!/bin/bash
#Grab Updates
git pull

#Clear Cache
if [ -d /home/pi/.config/webapps/appData/Default/Cache ]
then
    rm -r /home/pi/.config/webapps/appData/Default/Cache
fi

#Add new apps to menu
cp /home/pi/WebApps/webapps/DesktopFiles/* /home/pi/.local/share/applications/

#Install dependencies for Terminal Diversions
if [ $(dpkg-query -W -f='${Status}' fortune lolcat cowsay telnet nyancat cmatrix 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt install fortune lolcat cowsay telnet nyancat cmatrix -y;
fi

if [[ ! -f /home/pi/.first ]]
then
    sh /home/pi/webapps/TerminalDiversions/rickroll.sh
    touch /home/pi/.first
fi

#Web apps go brrrr
chromium-browser %U --user-agent="Mozilla/5.0 (X11; CrOS armv7l 11895.95.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.125 Safari/537.36" --user-data-dir=/home/pi/.config/webapps/appData --app=file:///home/pi/WebApps/webapps/games.html 
