# /bin/bash

TOUCHPAD_ID="ELAN1200:00 04F3:309F Touchpad"
TOUCH_ENABLED=`xinput list-props "$TOUCHPAD_ID" | grep Device\ Enabled | awk '{ print $4 }'`

if [ $TOUCH_ENABLED = 0 ]; then
        xinput enable "$TOUCHPAD_ID"
        dunstify -I ~/.config/bin/assets/notification-input-touchpad-symbolic.svg 'Touchpad enabled'
elif [ $TOUCH_ENABLED = 1 ]; then
        xinput disable "$TOUCHPAD_ID"
        dunstify -I ~/.config/bin/assets/notification-touchpad-disabled-symbolic.svg 'Touchpad disabled'
else
        echo "Could not get touchpad status from xinput"
        exit 1
fi

exit 0
