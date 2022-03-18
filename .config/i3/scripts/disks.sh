#!/bin/bash
# source ~/Documents/github/RandomWallpaper/color_scheme

DISK_USED=$(df -h $1 | awk '/\//{ printf("%4s", $3) }' | tr -d ' ')
DISK_TOTAL=$(df -h $1 | awk '/\//{ printf("%4s", $2) }' | tr -d ' ')

echo "[  $DISK_USED/$DISK_TOTAL ]"
echo ""
