#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar example &


# Launch bar1 and bar2
# MONITOR=DP-1 polybar bar1 -r &
# MONITOR=HDMI-0 polybar bar2 -r &
# for m in $(polybar --list-monitors | cut -d":" -f1); do
#     MONITOR=$m polybar --reload example &
# done

echo "Polybar launched..."
