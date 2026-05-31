#!/bin/sh

PID=$(pgrep -x gammastep)

if [ -n "$PID" ]; then
    # If running → stop it
    kill "$PID"
    notify-send "Gammastep OFF"
else
    # If not running → start it
    gammastep -l 28.0:84.0 -t 6500:3500 &
    notify-send "Gammastep ON"
fi
