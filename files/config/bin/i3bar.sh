## Launch Polybar with selected style
launch_bar() {
	if [[ ! `pidof polybar` ]]; then
		polybar -q main &
	else
		polybar-msg cmd restart
	fi
}

# Execute function
launch_bar
