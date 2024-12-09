<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
### Arch Distro on Termux Android
<img src="https://raw.githubusercontent.com/wahasa/Arch/refs/heads/main/Distro/Arch-Distro.jpg">

* Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Termux-x11](https://github.com/termux/termux-x11/releases)

### Installation
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

---
- Reinstall : proot-distro reset archlinux
- Uninstall : proot-distro remove archlinux

---
<b>Basic commands Arch</b>
> pacman -Sy : Update list package.</br>
> pacman -Syu : Upgrade package.</br>
> pacman -Ss (pkg) : Search package.</br>
> pacman -S (pkg) : Install package.</br>
> pacman -R (pkg) : Delete package.</br>

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
nano $PREFIX/bin/arch
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
chmod +x $PREFIX/bin/arch
```

---
- Login Arch
> arch

- Logout Arch
> exit

- Remove Arch
```
rm $PREFIX/bin/arch ; pd remove archlinux
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
nano $PREFIX/bin/arch
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
- Login Arch
> arch

- Logout Arch
> exit

- Remove Arch
```
rm $PREFIX/bin/arch ; pd remove archlinux
```
</details>

---
- [x] [Install Desktop Environments](https://github.com/wahasa/Arch/tree/main#install-desktop-environments)

- [x] [Run Desktop Environments](https://github.com/wahasa/Arch/tree/main#run-desktop-environments)
</br>

---
<p align="center">Good Luck</p>

---
