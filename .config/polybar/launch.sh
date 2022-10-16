#!/usr/bin/env bash

THEME="lofi"

killall polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

CONFIG_DIR=$(dirname $0)/themes/$THEME/config.ini

# Launch polybar
polybar main -c $CONFIG_DIR &

if [[ $(xrandr -q | grep 'HDMI-1 connected') ]]; then
	polybar external -c $CONFIG_DIR &
fi
