#!/bin/bash

caps_lock_state=false

evtest /dev/input/by-id/usb-ZMK_Project_Cyboard_64473BEE7CA8FBD7-event-kbd | while read -r line; do
    if echo "$line" | grep -q "EV_KEY.*KEY_CAPSLOCK"; then
        if echo "$line" | grep -q "value 1"; then
            if $caps_lock_state; then
                caps_lock_state=false
                notify-send "Caps Lock OFF"
            else
                caps_lock_state=true
                notify-send "Caps Lock ON"
            fi
        fi
    fi
done
#
# caps_lock_state=false
#
# evtest /dev/input/by-id/usb-ZMK_Project_Cyboard_64473BEE7CA8FBD7-event-kbd | while read -r line; do
#     if echo "$line" | grep -q "EV_KEY.*KEY_CAPSLOCK"; then
#         if echo "$line" | grep -q "value 1"; then
#             if $caps_lock_state; then
#                 caps_lock_state=false
#                 echo notify-send "Caps lock off"
#             else
#                 caps_lock_state=true
#                 echo notify-send "Caps lock on"
#             fi
#         fi
#     fi
# done
