#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/dots/polybar"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ $m == "DP-1" ]; then
        MONITOR=$m polybar -c "$DIR"/main.ini top-vert &
        MONITOR=$m polybar -c "$DIR"/main.ini bottom-vert &
    elif [ $m == "DP-2" ]; then
        MONITOR=$m polybar -c "$DIR"/main.ini top-hd &
        MONITOR=$m polybar -c "$DIR"/main.ini bottom-hd &
    else
        MONITOR=$m polybar -c "$DIR"/main.ini top &
        MONITOR=$m polybar -c "$DIR"/main.ini bottom &
    fi
  done
else
  polybar -c "$DIR"/main.ini top &
  polybar -c "$DIR"/main.ini bottom &
fi
