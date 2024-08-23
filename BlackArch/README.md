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

* Login Arch
> proot-distro login archlinux
* Logout Arch
> exit

---
- Reinstall : proot-distro reset archlinux
- Uninstall : proot-distro remove archlinux

---
#### Install BlackArch (Add-repo)
In Arch, run this command
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
<details><summary><b><code>Add Username</code></b></summary></br>

In Arch, run this commands
* Add Username
```
useradd <username>
```
```
passwd <username>
```
```
echo "<username>    ALL=(ALL)       ALL" >> /etc/sudoers
```
```
su <username>
```

* Del Username
```
userdel <username>
```

</br>
Note :</br>
(username) : Replace with your username.

---
</details>

<details><summary><b><code>Fixed Sound Output</code></b></summary></br>

* In Termux, run this commands
> apt update

```
apt install pulseaudio nano -y
```
```
nano $PREFIX/bin/blackarch
```

Copy Script
```
#!/bin/bash
pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1
proot-distro login archlinux --shared-tmp
```
Save : ctrl + x, click y enter.

```
chmod +x $PREFIX/bin/blackarch
```

---
<b>Login BlackArch</b>
> blackarch

<b>Logout BlackArch</b>
> exit

---
* In Arch,run this commands
```
cp /etc/skel/.bashrc .
```
```
echo "export PULSE_SERVER=127.0.0.1" >> ~/.bashrc
```

---
</details>

<details><summary><code><b>Install Desktop Arch</b></code></summary></br>

In Arch, run this command
> pacman -Syu

- Xfce Desktop
```
pacman -S xfce4 xfce4-goodies gst-libav firefox
```
- Lxde Desktop
```
pacman -S lxde firefox ; mv /usr/bin/lxpolkit /usr/bin/lxpolkit.bak
```
- Lxqt Desktop
```
pacman -S lxqt firefox
```
- Kde- Desktop
```
pacman -S plasma firefox
```
- Mate Desktop
```
pacman -S mate mate-extra firefox
```

---
</details>


<details><summary><code><b>Install Applications</b></code></summary></br>

In Arch, run this command
> pacman -Syu

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
- Vim
```
pacman -S vim
```

---
</details>

<details><summary><code><b>Run VNC Viewer Android</b></code></summary></br>

* In Termux, run this commands
> apt update

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Note/main/tigervnc ; chmod +x tigervnc ; ./tigervnc
```

---
* In Arch, run this commands
> pacman -Syu

```
pacman -S nano
```
```
nano /usr/local/bin/termux-x11
```

Copy Script
```
#!/bin/sh
export DISPLAY=:1
rm -rf /run/dbus/dbus.pid
#export PULSE_SERVER=127.0.0.1
#dbus-launch $HOME/.vnc/xstartup

# --XFCE-- #
#startxfce4

# --LXDE-- #
#startlxde

# --LXQT-- #
#startlxqt

# --KDE-- #
#startplasma-x11

# --KDE-- #
#mate-session

# --END-- #
```
Save : ctrl + x, click y enter.

Note :
Remove the sign (#) on the desktop you are installing now.

---
* Start VNC Server

In Session 1 (Termux), run this command
> vncstart

---
Add new session</br>
Swipe the screen from left to right in termux, click 'New Session'.

---
In Session 2 (Arch), run this command
> vncstart

---
* Open Vnc Viewer

Add (+) VNC Client to connect, fill with :

Address
> localhost:1 

Name
> Desktop

To disconnect VNC Client, click (X) on the right.

---
* Stop VNC Server

In Session 2 (Arch), run this command
> Click Ctrl+c, enter (2X) 

In Session 1 (Termux), run this command
> vncstop

---
</details>

- Run Termux-x11 Android
</br>

---
<p align="center">Good Luck</p>

---
