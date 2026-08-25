#!/bin/bash

sudo apt-get install tlp tlp-rdw
sudo tlp start
echo "START_CHARGE_THRESH_BAT0=0" | sudo tee -a /etc/tlp.conf > /dev/null
echo "STOP_CHARGE_THRESH_BAT0=1" | sudo tee -a /etc/tlp.conf > /dev/null
sudo tlp start
