# Bluetooth installation for Debian
* First run the following command
```
sudo apt-get install bluez bluez-tools
```

* Run `bt-adapter -d` to discover the bluetooth device
* Run `bt-device -c aa:bb:cc:dd:ee:ff` to start the connection
* Run `bt-device --set aa:bb:cc:dd:ee:ff Trusted true` to enable automatic connection

Reference: [StackExchange](https://unix.stackexchange.com/questions/588252/how-do-i-pair-a-bluetooth-mouse-in-debian)
