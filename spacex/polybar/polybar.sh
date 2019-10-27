# Polybar start script
# Credits to https://github.com/jaagr/polybar/issues/763

#!/usr/bin/env bash

sed -e
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
for monitor in $(polybar --list-monitors | cut -d ":" -f 1); do
  MONITOR=$monitor polybar --reload --config=$HOME/.config/polybar/config top &
done

echo "Bars launched"
