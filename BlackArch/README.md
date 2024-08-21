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
> apt update

#### Install Arch (Distro)
> apt install proot-distro
```
proot-distro install archlinux
```

- Login
> proot-distro login archlinux
- Logout
> exit

#### Install BlackArch (Add-repo)
In Arch, run this commands
> pacman -Syu

```
pacman -S wget ; wget https://blackarch.org/strap.sh
```
```
echo 26849980b35a42e6e192c6d9ed8c46f0d6d06047 strap.sh | sha1sum -c
```
```
chmod +x strap.sh ; ./strap.sh
```
```
pacman -Syyu
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
