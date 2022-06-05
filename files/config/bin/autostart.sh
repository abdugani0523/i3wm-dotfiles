#!/usr/bin/env bash

# Kill already running process
_ps=(xfce-polkit xfce4-power-manager thunar playerctld)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done

# Restore wallpaper
nitrogen --restore &

# Lauch polybar
i3bar.sh

# Lauch compositor
i3comp.sh

# Lauch notification daemon
i3dunst.sh

# Input
input.sh

# Polkit agent
/usr/lib/xfce-polkit/xfce-polkit &

# Enable power management
xfce4-power-manager --daemon &

# File manager daemon
thunar --daemon &

# Media player controller
playerctld daemon &
