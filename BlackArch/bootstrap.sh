#!/bin/bash
   clear
   echo ""
   echo "Installing BlackArch,."
   echo ""

#Prepare Packages
pacman-key --init && pacman-key --populate
pacman -Syu --noconfirm
pacman -S dialog nano sudo --noconfirm

#Blackarch Packages
wget https://blackarch.org/strap.sh
echo 26849980b35a42e6e192c6d9ed8c46f0d6d06047 strap.sh | sha1sum -c
chmod +x strap.sh ; ./strap.sh

#Extra Packages
cp /etc/skel/.bashrc .
echo "export PULSE_SERVER=127.0.0.1" >> ~/.bashrc

pacman -Syu --noconfirm
pacman -S neofetch --noconfirm
  clear
  echo ""
  echo "installation completed"
  echo ""
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
rm strap.sh bootstrap.sh
