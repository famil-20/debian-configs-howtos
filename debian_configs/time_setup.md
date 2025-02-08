# Sycn time
* Install following package
```bash
sudo apt-get install ntp
```
* Then check if `ntp` service is running or not
```bash
sudo systemctl status ntp
```
* Run following command to sync date/time with server
```bash
sudo ntpd -q -g
```
