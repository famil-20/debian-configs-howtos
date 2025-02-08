#!/bin/bash
sudo systemctl status ntp | grep "active (running)" && sudo ntpd -q -g
