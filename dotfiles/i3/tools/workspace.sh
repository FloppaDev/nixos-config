#!/bin/sh

i=$(($(xdotool getmouselocation --shell | sed -n 1p | sed 's/X=//g')>=1920))

if [ "$i" -eq "0" ]; then
    echo l$1;
    exit;
fi

if [ "$i" -eq "1" ]; then
    echo r$1;
    exit;
fi
