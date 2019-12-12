# google analytics for Raspberry Pi
autostart script to launch google analytics for raspberry pi as a display

If you're like me, trying to turn a dumb TV into a real time Google Analytics dashboard for yourself or your small business, this is what you can do. 

1) Get a cheap Raspberry Pi (recommanded Raspberry Pi 3 and above) and have the screen rotated 180 degrees to maximize real estate of the real time URL lists. 

2) To rotate in Raspberry Pi go to /boot/config.txt and insert display_rotate=1 or display_rotate=3 depending on which way you rotate

3) Create a new autostart.sh file into the path /home/pi/autostart.sh

4) Have the autostart.sh in this repo copied and pasted. REMEMBER to put in the URL of your real time analytics view!

5) Edit /etc/xdg/lxsession/LXDE-pi/autostart and to run this script by inserting @/home/pi/autostart.sh

6) Install this keyboard tool xdotool by running "apt-get update" and "apt-get install -y xdotool"

7) Optional: remember to start a cron to restart the Pi every 12 hours to ensure stability by inserting 0 */12 * * * reboot

8) Enjoy!
