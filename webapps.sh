#!/bin/bash
#Grab Updates
git pull

homedir=$( getent passwd "$USER" | cut -d: -f6 )

#Clear Cache
if [ -d $homedir/.config/webapps/appData/Default/Cache ]
then
    rm -r $homedir/.config/webapps/appData/Default/Cache
fi

if command -v chromium-browser &>/dev/null;then
  browser="$(command -v chromium-browser)"
elif command -v chromium &>/dev/null;then
  browser="$(command -v chromium)"
elif command -v google-chrome &>/dev/null;then #Twister UI
  browser="$(command -v google-chrome)"
else
  error "You must have Chromium Browser installed to use the Boxy SVG Chrome App!"
fi

#Web apps go brrrr
$browser %U --user-agent="Mozilla/5.0 (X11; CrOS armv7l 11895.95.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.125 Safari/537.36" --user-data-dir=/home/pi/.config/webapps/appData --app=file:///$homedir/WebApps/webapps/games.html 
