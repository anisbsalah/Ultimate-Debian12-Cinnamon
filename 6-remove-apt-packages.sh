#!/bin/bash
#set -e
##################################################################################################################
# Author  :  anisbsalah
# Github  :  https://github.com/anisbsalah
##################################################################################################################
#
# DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
# CURRENT_DIR="$(pwd)"
##################################################################################################################

echo
tput setaf 9
echo "######################################################################################################"
echo "################# Removing packages..."
echo "######################################################################################################"
tput sgr0
echo

sudo apt purge -y aisleriot five-or-more four-in-a-row gnome-2048 gnome-chess gnome-games gnome-klotski gnome-mahjongg gnome-mines gnome-nibbles gnome-robots gnome-sudoku gnome-taquin gnome-tetravex hitori iagno lightsoff quadrapassel swell-foop tali

sudo apt purge -y brasero
sudo apt purge -y hexchat
sudo apt purge -y firefox-esr
# sudo apt purge -y libreoffice-*
# sudo apt purge -y papirus-icon-theme
sudo apt purge -y pidgin
sudo apt purge -y remmina
sudo apt purge -y rhythmbox
sudo apt purge -y sound-juicer
sudo apt purge -y totem
# sudo apt purge -y transmission-gtk
sudo apt purge -y zutty

sudo apt autoremove -y

echo
tput setaf 2
echo "######################################################################################################"
echo "################# Packages removed successfully"
echo "######################################################################################################"
tput sgr0
echo
