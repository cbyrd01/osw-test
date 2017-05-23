#!/bin/bash
true ${SSID:=test}
true ${NAI_REALM:=example.org}
true ${INTERFACE:=wlan0}
sed -i "s/ssid=.*/ssid=$SSID/g" /hostapd/etc/hostapd.conf
sed -i "s/nai_realm=0\,.*/nai_realm=0\,$NAI_REALM/g" /hostapd/etc/hostapd.conf
sed -i "s/interface=.*/interface=$INTERFACE/g" /hostapd/etc/hostapd.conf
exec /hostapd/sbin/hostapd /hostapd/etc/hostapd.conf
