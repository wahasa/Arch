<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
#### BlackArch Distro on Termux Android
<img src="https://raw.githubusercontent.com/wahasa/Arch/refs/heads/main/Distro/BlackArch-Distro.jpg">

* Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Termux-x11](https://github.com/termux/termux-x11/releases)

---
Warning :</br>
This just adds the BlackArch repository to Arch, but the underlying base is still Arch.

---
#### Installation
Copy and paste this commands to Termux

- [x] Install Arch (Distro)
> apt update

```
apt install proot-distro -y ; proot-distro install archlinux
```

* Login Arch
> proot-distro login archlinux
* Logout Arch
> exit

- Reinstall : proot-distro reset archlinux
- Uninstall : proot-distro remove archlinux

---
- [x] Add Repository

> Install BlackArch

In Arch, run this commands

```
pacman-key --init ; pacman-key --populate ; pacman -Syu --noconfirm
```
```
pacman -S dialog wget nano sudo --noconfirm
```
```
wget https://blackarch.org/strap.sh
```
```
echo bbf0a0b838aed0ec05fff2d375dd17591cbdf8aa strap.sh | sha1sum -c
```
```
chmod +x strap.sh ; ./strap.sh
```

- Edit Os-release
```
rm -rf /etc/os-release
```
```
nano /etc/os-release
```

Copy Script
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

<details><summary><b><code>Fixed Sound Output</code></b></summary></br>

<b>In Termux, run this commands</b>
> apt update

- Edit Script
```
apt install pulseaudio nano -y
```
```
nano $PREFIX/bin/blackarch
```

- Copy Script
```
#!/bin/bash
pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1
proot-distro login archlinux --shared-tmp
```
Save : ctrl + x, click y enter.

- Activate script
```
chmod +x $PREFIX/bin/blackarch
```

---
- Login BlackArch
> blackarch

- Logout BlackArch
> exit

- Remove BlackArch
```
rm $PREFIX/bin/blackarch ; pd remove archlinux
```

---
<b>In Linux, run this command</b>
```
echo "export PULSE_SERVER=127.0.0.1" >> ~/.bashrc
```

---
</details>

<details><summary><b><code>Add New Username</code></b></summary></br>

<b>In Linux, run this commands</b>
> pacman -S sudo

- Add Username
```
useradd <username>
```
```
passwd <username>
```
```
echo "<username>    ALL=(ALL)       ALL" >> /etc/sudoers
```

</br>
Note :</br>
(username) : Replace with your username.

---
- Login Username
```
su <username>
```

- Logout Username
```
exit
```

- Remove Username
```
userdel <username>
```

---
<b>In Termux, run this commands</b>
> pacman -S nano

- Edit Script
```
nano $PREFIX/bin/blackarch
```
</br>

> proot-distro login archlinux --shared-tmp

To

```
proot-distro login --user <username> archlinux --shared-tmp
```
Save : ctrl + x, click y enter.

</br>
Note :</br>
(username) : Replace with your username.

---
- Login BlackArch
> blackarch

- Logout BlackArch
> exit

- Remove BlackArch
```
rm $PREFIX/bin/blackarch ; pd remove archlinux
```
</details>

---
- [x] [Install Desktop Environments](https://github.com/wahasa/Arch/tree/main#install-desktop-environments)

- [x] [Run Desktop Environments](https://github.com/wahasa/Arch/tree/main#run-desktop-environments)
</br>

---
<p align="center">Good Luck</p>

---
