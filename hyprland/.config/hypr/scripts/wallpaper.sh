#!/bin/bash

WALLPAPER="$HOME/Pictures/wallpapers/491593.jpg"

pkill -f swaybg

swaybg -i "$WALLPAPER" -m fill & disown
