#!/bin/bash

# Please be cautious about running this script. This script can cause MAJOR DAMAGES to your system if you 
# are not careful. This is for getting rid of the gnome GUI completely. Please do not run this script unless 
# you are 100% positive that this is what you want

# In addition, this script has to be run as root. 

# Remove all gnome packages
pacman -Rcns gnome gnome-extra gdm

# Re-install NetworkManager
pacman -Syu networkmanager
systemctl enable NetworkManager
systemctl start NetworkManager

# Manually configure wifi if necessary
nmtui

# Shutdown and restart your system
reboot
