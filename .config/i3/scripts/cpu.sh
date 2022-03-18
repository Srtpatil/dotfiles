#!/bin/bash

CPU_USAGE=$(mpstat 1 1 | awk '/Average:/ {printf("%s\n", $(NF-9))}')

echo "[  $CPU_USAGE% ]"
echo "$CPU_USAGE"
