#!/bin/bash
if command -v chromium-browser &>/dev/null;then
  browser="$(command -v chromium-browser)"
elif command -v chromium &>/dev/null;then
  browser="$(command -v chromium)"
else
  error "You must have Chromium Browser installed to use the Boxy SVG Chrome App!"
fi

$browser --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36" --user-data-dir=/home/pi/.config/webapps/Discord --app=https://discord.com/login --window-size=1200,768