#!/bin/bash

focus_window() {
    local class="$1"
    hyprctl dispatch focuswindow "$class"
}

workspace(){
    local workspace="$1"
    hyprctl dispatch movetoworkspace "$workspace"
}

move() {
    local direction="$1"
    hyprctl dispatch movewindow "$1"
}

resize() {
    local width="$1"
    local height="$2"
    local window="$3"
    hyprctl dispatch resizewindowpixel exact "$width" "$height",class:"$window"
}

kitty &
sleep 1
focus_window "kitty"
workspace 6
kitty --class kitty-cava -e cava &
sleep 1
workspace 1
brave &
sleep 1
brave --app=https://messages.google.com/web/ &
sleep 1
focus_window "brave-messages"
move l
focus_window "cava" &

resize 1051 233 "kitty-cava"
