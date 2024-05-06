#!/bin/bash

LEFT_SCREEN_DIR="$HOME/Pictures/left screen"
RIGHT_SCREEN_DIR="$HOME/Pictures/right screen"
LEFT_SCREEN_OUTPUT="DP-2"
RIGHT_SCREEN_OUTPUT="DP-3"
TRANSITION_EFFECT="any"
TIMER_INTERVAL=60

set_wallpaper() {
    local output=$1
    local directory=$2
    local current_index=$3
    local wallpapers=("$directory"/*)
    local total_wallpapers=${#wallpapers[@]}
    local next_index=$(( (current_index + 1) % total_wallpapers ))
    swww img -o "$output" --transition-fps 60 --transition-duration 2 --transition-type "$TRANSITION_EFFECT" "${wallpapers[$next_index]}"
}

LEFT_SCREEN_INDEX=0
RIGHT_SCREEN_INDEX=0

while true; do
    set_wallpaper "$LEFT_SCREEN_OUTPUT" "$LEFT_SCREEN_DIR" "$LEFT_SCREEN_INDEX"
    set_wallpaper "$RIGHT_SCREEN_OUTPUT" "$RIGHT_SCREEN_DIR" "$RIGHT_SCREEN_INDEX"
    (( LEFT_SCREEN_INDEX++ ))
    (( RIGHT_SCREEN_INDEX++ ))
    sleep "$TIMER_INTERVAL"
done

