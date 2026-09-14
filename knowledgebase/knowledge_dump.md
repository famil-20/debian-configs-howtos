# Shotcut install problem
After installing Shotcut 26.2.26, it cannot start if you don't run `ldconfig` command
Reference: https://lists.debian.org/debian-multimedia/2026/02/msg00004.html

# Command keybind problem / command not appearing in command run menu (all in i3)
You need to create a symlink in /usr/local/bin

# To get current layout, we can use following repository (if we are using setxkbmap)
```bash
git clone https://github.com/nonpop/xkblayout-state.git 
cd xkblayout-state
make
```

