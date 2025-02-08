# How to enable conservation mode in Lenovo Idepad Gaming 3
* Run following command to install TLP
```
sudo apt-get install tlp tlp-rdw
```
* Run `sudo tlp start`
* Open config file `/etc/tlp.conf` and add following parameters
```
START_CHARGE_THRESH_BAT0=0
STOP_CHARGE_THRESH_BAT0=1
```
* Run `sudo tlp start`
* Check config that is being used using `sudo tlp-stat -c`
* Check current status of the battery using `sudo tlp-stat -b`

Reference: [TLP Documentation](https://linrunner.de/tlp/settings/bc-vendors.html#lenovo-non-thinkpad-series)
