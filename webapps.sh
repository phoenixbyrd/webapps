#!/bin/bash
#Grab Updates
git pull

#Clear Cache
if [ -d /home/pi/.config/webapps/appData/Default/Cache ]
then
    rm -r /home/pi/.config/webapps/appData/Default/Cache
fi

if command -v chromium-browser &>/dev/null;then
  browser="$(command -v chromium-browser)"
elif command -v chromium &>/dev/null;then
  browser="$(command -v chromium)"
else
  error "You must have Chromium Browser installed to use the Boxy SVG Chrome App!"
fi

#Web apps go brrrr
$browser %U --user-agent="Mozilla/5.0 (X11; CrOS armv7l 11895.95.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.125 Safari/537.36" --user-data-dir=/home/pi/.config/webapps/appData --app=file:///home/pi/WebApps/webapps/games.html 
