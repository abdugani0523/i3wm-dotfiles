#/usr/bin/env bash

if [ "$1" == "-f" ]; then
	alacritty --class 'alacritty-float,alacritty-float'
elif [ "$1" == "-s" ]; then
	alacritty --class 'Fullscreen,Fullscreen' -o window.startup_mode=fullscreen window.padding.x=30 window.padding.y=30 window.opacity=0.95 font.size=14
else
	alacritty
fi
