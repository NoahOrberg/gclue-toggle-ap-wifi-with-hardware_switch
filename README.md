# gclue-toggle-ap-wifi-with-hardware_switch

- Easy switch betwen AP(Access Point) and Wifi client.

### Preparation
``` bash
$ cd <this repository>
$ bash ./setup.sh
```

and Please connect GPIO5 to SwitchBrick(#117)

if you wanna use other GPIO PIN, you can modyify `~/.ap/toggle_sw.py` :)

and add the following code to the end of `/etc/rc.local` (But before `exit 0`)


``` bash
...

##### add this code
python /home/pi/.ap/toggle_sw.py
bash /home/pi/.ap/toggle_ap_wifi.sh
#####

exit 0
```

### Usage
- Use SwitchBrick(#117)
  - ON:  `Access Point`
  - OFF: `Wifi Client`
- `sudo reboot`


