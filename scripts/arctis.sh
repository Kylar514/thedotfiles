#!/bin/bash

sink_ids=$(wpctl status | awk '/Audio/, /Video/ { if ($0 ~ /Video/) exit; print }' | grep -A 3 "Sink")
arctis_id=$(echo "$sink_ids" | grep "Arctis" | grep -o '[0-9]\+' | head -n 1)
speaker_id=$(echo "$sink_ids" | grep "Built-in Audio" | grep -o '[0-9]\+' | head -n 1)

wpctl set-default $arctis_id
