<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
### BlackArch on Termux Android
![BlackArch](https://raw.githubusercontent.com/wahasa/Arch/main/BlackArch/BlackArch.jpg)

---
• Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Vnc Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)
- [x] [Termux X11](https://github.com/termux/termux-x11/releases)

## Installation
Copy and paste this commands to Termux

#### Install Arch (Distro)
> apt update

```
apt install proot-distro -y ; proot-distro install archlinux
```

- Login
> proot-distro login archlinux
- Logout
> exit
- Reinstall : proot-distro reset archlinux
- Uninstall : proot-distro remove archlinux

---
#### Install BlackArch (Add-repo)
In Arch, run this commands
> pacman -Syu

```
pacman -S wget ; wget https://raw.githubusercontent.com/wahasa/Arch/main/BlackArch/bootstrap.sh ; chmod +x bootstrap.sh ; ./bootstrap.sh
```

---
<b> Commands package blackarch</b>
- List all tools blackarch
```
pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u
```
- List tools categories blackarch
```
sudo pacman -Sg | grep blackarch
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
> pacman -R (pkg) : Delete pkg.</br>
> pacman -h : Help all commands.

---

- Add Username
- Fixed Sound Output
- Install Desktop Arch
> pacman -Syu

Xfce Desktop
```
pacman -S xfce4 xfce4-goodies gst-libav firefox
```
Lxde Desktop
```
pacman -S lxde firefox ; mv /usr/bin/lxpolkit /usr/bin/lxpolkit.bak
```
Lxqt Desktop
```
pacman -S lxqt firefox
```
Kde- Desktop
```
pacman -S plasma firefox
```
Mate Desktop
```
pacman -S mate mate-extra firefox
```

<details>
<summary><code><b>Install Applications</b></code></summary></br>

- Blender
```
pacman -S blender
```
- Firefox
```
pacman -S firefox
```
- Gedit
```
pacman -S gedit
```
- GIMP
```
pacman -S gimp
```
- Inkscape
```
pacman -S inkscape
```
- Kdenlive
```
pacman -S kdenlive
```
- Krita
```
pacman -S krita
```
- Lollypop
```
pacman -S lollypop
```
- Thunderbird
```
pacman -S thunderbird
```
</details>

- Run VNC Viewer Android
- Run Termux-x11 Android
