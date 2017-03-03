# gclue-toggle-ap-wifi-with-hardware_switch

- Easy switch betwen AP(Access Point) and Wifi client.

### Preparation
``` bash
$ cd <this repository>
$ bash ./setup.sh
```

and add the following code to the end of `/etc/rc.local` (But before `exit 0`)

and Please connect GPIO5 to SwitchBrick(#117)

``` bash
...

##### add this code
python /home/pi/.ap/toggle.py
bash /home/pi/.ap/toggle_ap_wifi.sh
#####

exit 0
```

### Usage
- re-write `~/.ap_mode`
  - if you want RaspberryPi3 to be `Access Point`, set `1`
  - if you want RaspberryPi3 to be `Wifi Client`, set `0`
- `sudo reboot`


