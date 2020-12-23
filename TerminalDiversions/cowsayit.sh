#!/bin/bash
clear

for n in {1..100}; 
do
	echo ""
	echo ""
	fortune | cowsay | lolcat
	echo ""
	echo ""
	echo "ctrl+c to quit"
	read -p "press enter for next"
	clear
done
exit 0