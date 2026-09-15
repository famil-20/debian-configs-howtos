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

# To have theme, icon etc. settings managed, we installed following and just set it up. We don't use any daemon and applicaitons actually read settings.ini themselves
`sudo apt install lxappearance`

# We use xrandr to set display settings
Just run `xrandr` alone to see what's available and what's current
Thenrun something as follows to set the settings:
`xrandr --output HDMI-1 --mode 2560x1440 --rate 120 --output eDP-1 --off`

# How to set auto detection for display settings
Install `autorandr`
Use `autorandr --save <name of config>` to save profile
If it doesn't switch automatically when unplugging/plugging in external display, run `autorandr --change`

