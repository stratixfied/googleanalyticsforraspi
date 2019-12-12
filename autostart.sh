#!/bin/bash
xset s noblank
xset s off
xset -dpms

unclutter -idle 0.5 -root &

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

export XAUTHORITY=/home/pi/.Xauthority; export DISPLAY=:0; xdotool key Return

/usr/bin/chromium-browser --noerrdialogs --kiosk '[https://analytics.google.com/analytics/web/#/report-home]' --disable-translate &

sleep 30

xdotool search --onlyvisible "chromium" key m
#to hide left menu automatically
