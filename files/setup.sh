#!/bin/sh
sudo apt update && sudo apt upgrade -y
cd /home/pi/VitaDock/files/ && sudo chmod +x *.sh
sudo cp /home/pi/VitaDock/files/vita.service /etc/systemd/user/
sudo cp /home/pi/VitaDock/files/91-vita.rules /etc/udev/rules.d/
sudo cp /home/pi/VitaDock/files/92-dvita.rules /etc/udev/rules.d/
sudo cp /home/pi/VitaDock/files/close.sh /home/pi/VitaDock/
sudo cp /home/pi/VitaDock/files/launch.sh /home/pi/VitaDock/
sudo systemctl enable /etc/systemd/user/vita.service && sudo systemctl start vita.service
echo -e "\e[92mThe above systemctl 'error' is nothing to worry about. Do not panic. Moving on...\e[0m"
/home/pi/VitaDock/files/bluetooth/./install.sh
echo -e "\nMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMNkxOKNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMK,  ..,:coxOKNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMK,          .,ckXMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMK,      .cd;    'oXMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMK,      .OMk.     ;KMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMK,      .OMk.      lNMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMK,      .OMk.      ;XMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMK,      .OMk.      :XMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMK,      .OMk.     .dWMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMWWK,      .OMO'    .oXMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMWKOdl;dO,      .OMW0dlclx0KKXNWMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMWX0xo:'.    :O,      .O0l:,'.......',:lx0WMMMMMMMMMMMMMMMM
MMMMMMMW0d:..     .,cd00,      .kc   ..,coddl.    .lXMMMMMMMMMMMMMMM
MMMMMMM0,     .:dk00Ox00,      'kxcox0KKOxl;'     .lXMMMMMMMMMMMMMMM
MMMMMMMNk:'.  .,:;'.  cO,      .ON0koc,.     .';lxKWMMMMMMMMMMMMMMMM
MMMMMMMMMWNKOxdlcccclo0K,      'ko.     .,cok0NWMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMNkl;'.  'kl.':lxOXWMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMWNKkxkXXKNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
\n
\e[93mPS VITA AUTO LAUNCH ENABLED SUCCESSFULLY.\e[0m
\e[36mVITA BLUETOOTH RECEIVER INSTALLED. NICE!\e[0m \n
\e[5m\e[31mPLEASE REBOOT \e[0mand then search for your Pi
on your vita's \e[1m'Settings > Devices > Bluetooth\e[0m' menu.
It will have the 'Pretty Name' you chose earlier in this install.\n
If you want to change the Pretty Name, just run this installer again.\n
Your vita should now automatically launch video
on the screen once it has been connected to your Pi via USB.\n
Please ensure that you have Xerpi's udcd_uvc plugin
installed: https://https://github.com/xerpi/vita-udcd-uvc
\n
Enjoy!\n
\e[30;48;5;82m~Team VitaDock :)\e[0m
\n"
sleep 1
