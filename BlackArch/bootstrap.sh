#!/bin/bash
pacman -S dialog nano sudo curl --noconfirm

curl -O https://blackarch.org/strap.sh

echo 26849980b35a42e6e192c6d9ed8c46f0d6d06047 strap.sh | sha1sum -c
chmod +x strap.sh ; sudo ./strap.sh

sudo pacman -Syu

