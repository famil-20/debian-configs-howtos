#!/bin/bash

ln -sf "$HOME/debian/debian_configs/i3_config" "$HOME/.config/i3/config"
ln -sf "$HOME/debian/debian_configs/i3status.conf" /etc/i3status.conf
i3-msg restart
