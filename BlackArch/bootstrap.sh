#!/bin/bash
   clear
   echo ""
   echo "Installing BlackArch,."
   echo ""
pacman-key --init && pacman-key --populate
pacman -Syu --noconfirm

#Prepare Packages
pacman -S dialog nano sudo --noconfirm

#Blackarch Packages
curl -O https://blackarch.org/strap.sh
echo 26849980b35a42e6e192c6d9ed8c46f0d6d06047 strap.sh | sha1sum -c
chmod +x strap.sh ; ./strap.sh

#Extra Packages
rm -rf /etc/os-release
wget -q https://raw.githubusercontent.com/wahasa/Arch/main/BlackArch/os-release /etc/

pacman -Syu --noconfirm
pacman -S neofetch --noconfirm
  echo ""
  echo "installation completed"
  echo ""
  echo "Commands BlackArch
- List All Tools BlackArch, run
pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u
- List Categories BlackArch, run
pacman -Sg | grep blackarch
- Install Tool BlackArch, run
pacman -S <tool>
- Install category BlackArch, run
pacman -S blackarch-<category>

You can see again, run 'cat Note'" > ~/Note

cat ~/Note
rm strap.sh bootstrap.sh
