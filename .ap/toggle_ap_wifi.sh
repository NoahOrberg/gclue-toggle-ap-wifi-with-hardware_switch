#!/bin/bash

flg=`cat /home/pi/.ap_mode`    # string

oldval=`sysctl net.ipv4.ip_forward | awk 'BEGIN{FS=" "}{print $3}'`

if [ -e /home/pi/.ap_mode -a $flg = '1' ] ; then
    cp /home/pi/.ap/on_ap_configfiles/interfaces   /etc/network/interfaces
    cp /home/pi/.ap/on_ap_configfiles/dhcpcd.conf  /etc/dhcpcd.conf
    cp /home/pi/.ap/on_ap_configfiles/sysctl.conf  /etc/sysctl.conf
else
    cp /home/pi/.ap/on_wifi_configfiles/interfaces   /etc/network/interfaces
    cp /home/pi/.ap/on_wifi_configfiles/dhcpcd.conf  /etc/dhcpcd.conf
    cp /home/pi/.ap/on_wifi_configfiles/sysctl.conf  /etc/sysctl.conf
fi

if [ $flg != $oldval ] ; then
  if [ $flg = '1' ] ; then
    systemctl enable hostapd
    systemctl enable isc-dhcp-server
  else 
    systemctl disable hostapd
    systemctl disable isc-dhcp-server
  fi
  echo 1
  reboot
fi
