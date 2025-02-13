#!/bin/bash

bt-adapter -d & sleep 3 && kill $!
bt-device -c "Microsoft Bluetooth Mouse" && bt-device --set "Microsoft Bluetooth Mouse" Trusted true
