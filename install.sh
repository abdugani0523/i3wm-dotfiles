#!/bin/bash

# Let's install each package listed in the pkglist.txt file.
sudo pacman --needed --ask 4 -Sy - < pkglist.txt || error "Failed to install required packages."

# Copy configurations
echo "##################################"
echo "## Copying configuration files  ##"
echo "##################################"
[ ! -d ~/.config ] && mkdir ~/.config
cp -r ./files/config/* ~/.config/
cp -r ./files/home/.* ~/


echo "######################################"
echo "## Enable lightdm as login manager. ##"
echo "######################################"
# Disable the current login manager
sudo systemctl disable $(grep '/usr/s\?bin' /etc/systemd/system/display-manager.service | awk -F / '{print $NF}') || echo "Cannot disable current display manager."
# Enable sddm as login manager
sudo systemctl enable lightdm

echo "#######################################################"
echo "## Remember to install AUR packages before login i3! ##"
echo "#######################################################"
echo "Example:"
echo \t"paru --needed -S > aur.txt"

echo "##############################"
echo "## DTOS has been installed! ##"
echo "##############################"

while true; do
    read -p "Do you want to reboot to get your i3? [Y/n] " yn
    case $yn in
        [Yy]* ) reboot;;
        [Nn]* ) break;;
        "" ) reboot;;
        * ) echo "Please answer yes or no.";;
    esac
done

