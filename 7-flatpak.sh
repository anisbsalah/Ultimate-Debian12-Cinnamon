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

#echo
tput setaf 3
echo "######################################################################################################"
echo "################# Installing flatpak..."
echo "######################################################################################################"
tput sgr0
echo

sudo apt install -y flatpak

echo
tput setaf 3
echo "######################################################################################################"
echo "################# Adding the Flathub repository"
echo "######################################################################################################"
tput sgr0

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo
tput setaf 2
echo "######################################################################################################"
echo "################# Flatpak has been installed"
echo "######################################################################################################"
tput sgr0
tput setaf 9
echo "######################################################################################################"
echo "################# To complete setup restart your system!"
echo "######################################################################################################"
tput sgr0
echo
