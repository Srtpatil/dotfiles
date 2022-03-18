#!/bin/bash
# source ~/Documents/github/RandomWallpaper/color_scheme

RAM_USED=$(free -h | awk '/Mem:/ { printf("%5s", $3) }')
RAM_TOTAL=$(free -h | awk '/Mem:/ { printf("%5s", $2) }')

echo "[  $RAM_USED/$RAM_TOTAL ]"
echo "$RAM_USED/$RAM_TOTAL"
