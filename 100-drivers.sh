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
echo "DRIVERS"
echo "######################################################################################################"
tput sgr0

tput setaf 3
echo "######################################################################################################"
echo "################# Installing Broadcom wifi driver..."
echo "######################################################################################################"
tput sgr0
echo

WIRELESS_CARD=$(lspci | grep -i network)
if grep -qE "Broadcom" <<<"${WIRELESS_CARD}"; then
	if grep -qE "BCM43" <<<"${WIRELESS_CARD}"; then
		if dpkg -s b43-fwcutter firmware-b43-installer >/dev/null 2>&1; then
			tput setaf 5
			echo "########################################"
			echo " Drivers are already installed"
			echo "########################################"
			tput sgr0
		else
			sudo apt install -y b43-fwcutter firmware-b43-installer
		fi
		echo
		tput setaf 3
		echo "########################################"
		echo " Loading modules..."
		echo "########################################"
		tput sgr0
		echo

		#sudo modprobe -r b44 b43 b43legacy bcma brcmsmac ssb wl
		sudo modprobe -r b44 b43legacy bcma brcmsmac ssb
		sudo modprobe b43
	fi
else
	tput setaf 5
	echo "########################################"
	echo " Nothing to do"
	echo "########################################"
	tput sgr0
fi

#######################     OR     #############################

#wget http://ftp.de.debian.org/debian/pool/non-free/b/broadcom-sta/broadcom-sta-common_6.30.223.271-23_all.deb -O "$CURRENT_DIR/broadcom-sta-common_6.30.223.271-23_all.deb"
#wget http://ftp.de.debian.org/debian/pool/non-free/b/broadcom-sta/broadcom-sta-dkms_6.30.223.271-23_all.deb -O "$CURRENT_DIR/broadcom-sta-dkms_6.30.223.271-23_all.deb"
#sudo dpkg -i "$CURRENT_DIR/broadcom-sta-common_6.30.223.271-23_all.deb"
#sudo dpkg -i "$CURRENT_DIR/broadcom-sta-dkms_6.30.223.271-23_all.deb"

# OR

#sudo apt install -y wget dkms
#sudo apt install -y broadcom-sta-dkms
#sudo modprobe -r b44 b43 b43legacy bcma brcmsmac ssb wl
#sudo modprobe b43

#######################     OR     #############################

#sudo apt install -y linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,')
#sudo apt install -y broadcom-sta-dkms
#sudo modprobe -r b44 b43 b43legacy bcma brcmsmac ssb wl
#sudo modprobe wl

################################################################

echo
tput setaf 2
echo "######################################################################################################"
echo "################# Drivers have been installed"
echo "######################################################################################################"
tput sgr0
tput setaf 9
echo "######################################################################################################"
echo "################# You have to reboot!"
echo "######################################################################################################"
tput sgr0
echo
