#!/bin/bash

dunstctl history | jq -r '.data[-3:] | reverse | .[] | "\(.summary): \(.body)"' | sed '/^$/d' | while read -r line; do
    echo "<span foreground='#ffffffaa'>$line</span>"
done
