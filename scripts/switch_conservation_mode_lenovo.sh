#!/bin/bash

FILE="/etc/tlp.conf"

IS_ON="STOP_CHARGE_THRESH_BAT0=1"
IS_OFF="STOP_CHARGE_THRESH_BAT0=0"

if [ ! -z $(grep "$IS_ON" "$FILE") ]; then
	sed -i "s/$IS_ON/$IS_OFF/g" $FILE
	sudo tlp start
	sudo tlp-stat -b
elif [ ! -z $(grep "$IS_OFF" "$FILE") ]; then
	sed -i "s/$IS_OFF/$IS_ON/g" $FILE
	sudo tlp start
	sudo tlp-stat -b
fi

