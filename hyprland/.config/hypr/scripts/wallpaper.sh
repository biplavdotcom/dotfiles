#!/bin/bash

WALLPAPER="$HOME/Downloads/idk.jpg"

pkill -f swaybg

swaybg -i "$WALLPAPER" -m fill & disown
