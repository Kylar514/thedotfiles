#!/bin/bash
if [[ -f /tmp/capslock_state ]]; then
    caps_lock=$(cat /tmp/capslock_state)
    if [[ "$caps_lock" == "true" ]]; then
        echo "CAPS LOCK ON"
    else
        echo "CAPS LOCK OFF"
    fi
else
    echo "CAPS LOCK OFF"
fi
