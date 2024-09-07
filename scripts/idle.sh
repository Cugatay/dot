#/bin/sh

if [ -f "/usr/bin/swayidle" ]; then
  swayidle -w timeout 300 'swaylock -f' timeout 360 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on'
  # swayidle -w timeout 10 'swaylock -f' timeout 20 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on'
fi
