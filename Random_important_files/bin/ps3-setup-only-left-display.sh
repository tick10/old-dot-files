#!/bin/sh
xrandr --output DVI-I-2 --off --output DVI-I-1 --off --output DVI-I-0 --off --output DVI-I-3 --mode 1280x768 --pos 0x0 --rotate normal --output TV-0 --off &
nitrogen --restore
