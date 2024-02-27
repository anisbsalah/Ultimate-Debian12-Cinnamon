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
tput setaf 6
echo "######################################################################################################"
echo "                                       STARTING CURRENT CHOICES"
echo "######################################################################################################"
tput sgr0
echo

sudo apt update

./1-btrfs-setup.sh

./2-swap.sh

./3-package-managers.sh

echo
tput setaf 6
echo "######################################################################################################"
echo "APT packages"
echo "######################################################################################################"
tput sgr0

./4-install-keys-add-repos-packages.sh

./5-install-apt-packages.sh

./6-remove-apt-packages.sh

echo
tput setaf 6
echo "######################################################################################################"
echo "FLATPAK"
echo "######################################################################################################"
tput sgr0

./7-flatpak.sh

./8-github-projects.sh

./9-grub-settings.sh

./10-plymouth.sh

./20-themes.sh

./30-icons.sh

./40-cursors.sh

./50-shells.sh

./60-shell-prompt.sh

./70-terminal-fun.sh

./80-nerd-fonts.sh

./90-settings.sh

./100-drivers.sh

./200-firewall.sh

echo
tput setaf 6
echo "######################################################################################################"
echo "                                        END OF CURRENT CHOICES"
echo "######################################################################################################"
tput sgr0
tput setaf 9
echo "######################################################################################################"
echo "                                       REBOOT YOUR COMPUTER NOW"
echo "######################################################################################################"
tput sgr0
echo
