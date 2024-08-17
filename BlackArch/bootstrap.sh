#!/bin/bash
clear
   echo ""
   echo "Installing BlackArch,."
   echo ""

#Prepare Packages
pacman -S dialog nano --noconfirm
pacman -S sudo curl neofetch --noconfirm

#Blackarch Packages
curl -O https://blackarch.org/strap.sh
echo 26849980b35a42e6e192c6d9ed8c46f0d6d06047 strap.sh | sha1sum -c
chmod +x strap.sh ; sudo ./strap.sh

#Extra Packages
rm -rf /etc/os-release
wget -q https://raw.githubusercontent.com/wahasa/Arch/main/BlackArch/os-release /etc/

sudo pacman -Syu
  echo ""
  echo "installation completed"
  echo ""
  rm strap.sh bootstrap.sh
