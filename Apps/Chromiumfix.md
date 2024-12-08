<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
### Fixed Chromium on Arch
<img src="https://raw.githubusercontent.com/wahasa/Arch/refs/heads/main/Patch/Chromium.jpg">

* Install Chromium
> pacman -S chromium

* Uninstall Chromium
> pacman -R chromium

---
#### Fixed chromium not opening

In Linux, run this commands
> pacman -S nano

* Edit script
```
nano /usr/share/applications/chromium-browser.desktop
```

* Add script
```
Exec=/usr/bin/chromium-browser --no sandbox --test-type %U
```

Save : ctrl + x, click Y enter.

Example :
> Exec=/usr/bin/chromium %U

To

> Exec=/usr/bin/chromium --no-sandbox %U

* You can open chromium now.
</br>

---
#### How to change search engine

* Click the three dots on the right
* Select settings
* Click search engine on the left
* Select manage search engines & site
* Click Add (search engine)

Add search engine
> Search engine
```
Google
```

> Shortcut
```
Google.com
```

> URL with %s in place of query
```
https://google.com/search?q=%s
```

* Search saved search engines
* Click the three dots
* Slect Make default
* Close Chromium and open again
</br>

---
<p align="center">Good Luck</p>

---
