touchpad="ELAN1200:00 04F3:309F Touchpad"

# Touchpad gestures
gestures_id=("libinput Tapping Enabled" "libinput Natural Scrolling Enabled")
for id in "${gestures_id[@]}"; do 
    xinput set-prop "$touchpad" "$id" 1
done
