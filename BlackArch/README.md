<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
#### BlackArch Distro on Termux Android
<img src="">

* Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Termux-x11](https://github.com/termux/termux-x11/releases)

---
Warning :</br>
This just adds the BlackArch repository to Arch, but the underlying base is still Arch.

---
#### Installation
Copy and paste this commands to Termux

> apt install wget

- [x] Install Arch

Rootfs : Arm64, Armhf, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Arch/refs/heads/main/Install/arch.sh ; chmod +x arch.sh ; ./arch.sh
```

---
* Login Arch
```
arch
```

* Logout Arch
```
exit
```

* Remove Arch
```
chmod -R 775 arch-fs ; rm -rf arch-fs .arch $PREFIX/bin/arch
```

---
- [x] Add Repository

> Install BlackArch

In Arch, run this commands
> pacman -S wget

```
wget https://blackarch.org/strap.sh
```
```
echo f14b5ebd544cc29ca8160fb1ff6cd79793eb42e1 strap.sh | sha1sum -c
```
```
chmod +x strap.sh ; ./strap.sh
```
```
nano /etc/os-release
```

Edit OS
```
NAME="BlackArch Linux"
PRETTY_NAME="BlackArch Linux"
ID=blackarch
ID_LIKE=arch
BUILD_ID=rolling
ANSI_COLOR="38;2;23;147;209"
HOME_URL="https://blackarch.org"
SUPPORT_URL="https://blackarch.org/community.html"
BUG_REPORT_URL="https://github.com/BlackArch/blackarch/issues"
LOGO=blackarch-logo
```
Save : ctrl + x, click y enter.

```
pacman -Syyu --noconfirm
```

---
<b> Commands package blackarch</b>
- List all tools blackarch
```
pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u
```
- List tools categories blackarch
```
pacman -Sg | grep blackarch
```
- Install tools blackarch
```
pacman -S <name_tool>
```
- Install tools category blackarch
```
pacman -S blackarch-<category>
```

---
<b>Basic commands Arch</b>
> pacman -Sy : Update list package.</br>
> pacman -Syu : Upgrade package.</br>
> pacman -Ss (pkg) : Search package.</br>
> pacman -S (pkg) : Install package.</br>
> pacman -R (pkg) : Delete package.</br>
> pacman -h : Help all commands.

---
Feature
- [x] [Install Desktop Environments](https://github.com/wahasa/Arch/tree/main#install-desktop-environments)

- [x] [Run Desktop Environments](https://github.com/wahasa/Arch/tree/main#run-desktop-environments)
</br>

---
<p align="center">Good Luck</p>

---
