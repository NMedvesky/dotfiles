#!/usr/bin/env bash

# hyprctl activewindow -j | jq -r .title | grep -E "Microsoft Teams|Obsidian" || hyprctl dispatch killactive


if [ "$(hyprctl activewindow -j | jq -r .title | grep -E 'Microsoft Teams')" ]; then
    xdotool getactivewindow windowunmap
    # notify-send aaaa
else
    # notify-send bbbb
    hyprctl dispatch killactive ""
fi
