# VitaDock
A series of scripts that install the necessary VitaDock components on your existing Raspberry Pi 4 rpiOS Desktop, including Bluetooth Audio _without an extra usb dongle_.

If you have questions, feedback, issues with getting vitadock running, or just want to chat, feel free to join the VitaDock discord: https://discord.gg/J62DM4N

This project is actively maintained over at https://github.com/TeamVitaDock/ (if it is not public, don't worry, it will be back.)

# Installation

***Prerequisites***

Go grab the latest rpiOS Desktop Edition from here: https://www.raspberrypi.org/downloads/raspberry-pi-os/ (Recommended software edition is not necessary)
Install that to a microSD and perform the initial setup of rpiOS

NOTE: You may also use your existing rpiOS Desktop installation, provided it is one of the _desktop_ editions.

**_Recommended:_** run `sudo raspi-config` and browse to Advanced > Compositor > Disable. You want to Disable the X Comp Manager. This seems to be the main cause of heavy screen tearing during video rendering. Feel free to enable or disable this option depending on your issues with screen tearing. ***Be sure to reboot!***

**_Recommended:_** On your desktop, head to Preferences > Raspberry Pi Configuration > Performance and set ***GPU Memory*** to 128. Any higher than this is not necessary. ***Be sure to reboot!*** 

***Download & Install***

In a terminal, run:
`cd ~/ && git clone https://github.com/butstevetho/vitadock-pi4-installer.git && /home/pi/vitadock-pi4-installer/files/./setup.sh`

During this install process, you will be prompted to enter a "Pretty Name". This is the name your PS Vita will see when searching for bluetooth devices. Default should be 'Raspberry Pi' but you can change it to whatever you like. If you want to change the Pretty Name, you can run this installer again.

Once the installer has finished, read the message from _Team VitaDock_ and run `sudo reboot`. 

Once you've rebooted to your desktop, you can power on and connect your Vita to your Pi via USB. (be sure you have Xerpi's udcd_uvc plugin installed: https://https://github.com/xerpi/vita-udcd-uvc)

***Bluetooth Connection***

Simply go to **Settings > Devices > Bluetooth** on your PS Vita and find your Pi in the list via its "Pretty Name" (default is Raspberry Pi). Connect, and the Pi should play a sound signifying it has connected properly. Your Pi is now receiving PS Vita audio!

At this point, the rpi4 seems to have anough meat on its bones to accommodate an excellent connection with the Vita and output the sound to HDMI. 

Drawbacks: 
 - Only one device can be connected to Bluetooth at a time. This means you cannot use it as a receiver for the Vita _and_ a sender for your bluetooth headset. 
 - 2.4Ghz Wifi Connections seem to occasionally interfere with Bluetooth connectivity. If you experience noise, distortion, lag or cutout, switch to 5Ghz wifi (if available) or disable wifi completely. 
 
