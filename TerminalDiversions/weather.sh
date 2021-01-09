#!/bin/bash

xfce4-terminal --title=weather --hide-menubar --hide-scrollbar --geometry 125x40 --hold -e 'curl wttr.in'
