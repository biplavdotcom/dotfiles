#!/bin/sh

if pgrep gammastep >/dev/null; then
    echo ""   # ON (night icon)
else
    echo ""   # OFF (light icon)
fi
