# Alex's Sovol SV08 Configuration

This repository contains the contents of the ```~/printer_data/config``` directory on the Sovol SV08. The machine is currently running the Sovol fork of Klipper with the latest versions of everything else managed by KIAUH.
Ther are minor tweaks, fixes and enhancements, but the configuration is basically stock. There are no guarantees that my configurations will work for you, and you use these entirely at your own risk. 
I reserve the right to change or remove these at any time.

## External Dependencies
- The configuration still uses the stock Sovol scripts in ```/home/sovol```.
- The ```notify.sh``` script uses ```curl``` to send notifications.
- Push notifications use ```ntfy.sh```. See https://ntfy.sh for details
- Push notifications require Klipper G-Code Shell Command Extension (already installed in Sovol default config). See https://github.com/dw-0/kiauh/blob/master/docs/gcode_shell_command.md for details

## Custom Configuration for Push Notifications
- You will need to add a line ```export NTFY_TOPIC="my_notification_name"``` to your ```~/.profile``` file to specify the subject for your ```ntfy.sh``` push notifications. This subject should be secret and unique to you.
- The contents of the messages are defined in ```notify.cfg```, along with the icon and alert level
- The notification macros are called in Macro.cfg (e.g. ```_NOTIFY_FINISH``` and ```_NOTIFY_PAUSE```).
