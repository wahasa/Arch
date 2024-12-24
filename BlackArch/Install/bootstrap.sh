#!/bin/bash
   clear
   echo ""
   echo "Installing BlackArch,."
   echo ""
#Prepare Packages
pacman-key --init ; pacman-key --populate
pacman -Syu --noconfirm

#Blackarch Packages
wget https://blackarch.org/strap.sh
chmod +x strap.sh ; ./strap.sh

#Extra Packages
cp /etc/skel/.bashrc .
echo "export PULSE_SERVER=127.0.0.1" >> ~/.bashrc
echo 'PRETTY_NAME="BlackArch Linux"
NAME="BlackArch"
ID=blackarch
ID_LIKE=arch
BUILD_ID=rolling
ANSI_COLOR="38;2;23;147;209"
HOME_URL="https://blackarch.org"
SUPPORT_URL="https://blackarch.org/community.html"
BUG_REPORT_URL="https://github.com/BlackArch/blackarch/issues"
LOGO=blackarch-logo' > /etc/os-release

pacman -Syyu --noconfirm
pacman -S neofetch --noconfirm
   echo ""
   echo "installation completed"
   echo ""
   sleep 3
   clear
echo "Commands package blackarch
- List All Tools BlackArch
pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u
- List Categories BlackArch
pacman -Sg | grep blackarch
- Install Tool BlackArch
pacman -S <tool>
- Install category BlackArch
pacman -S blackarch-<category>

You can see again, run 'cat Note'" > ~/Note
   cat ~/Note
   echo ""
   rm strap.sh bootstrap.sh
#
## Script edited by WaHaSa.
#
