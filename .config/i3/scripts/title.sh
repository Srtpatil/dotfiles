#!/bin/bash
i3-msg -t subscribe -m '[ "window" ]'| jq --unbuffered -MrcR 'fromjson? | . | select(.container.focused == true).container.window_properties.title' | 
while IFS= read -r title; do
    # echo "$title" | cut -c -50
		echo $title | awk '{print substr($0, 1, 50) "..."}'
done
