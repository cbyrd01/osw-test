#!/bin/bash
true ${SSID:=test}
true ${NAI_REALM:=example.org}
true ${INTERFACE:=wlan1}
sed -i "s/ssid=\".*\"/ssid=\"$SSID\"/g" /wpa/etc/wpa_supplicant.conf
#sed -i "s/nai_realm=0\,.*/nai_realm=0\,$NAI_REALM/g" /hostapd/etc/hostapd.conf
exec /wpa/bin/wpa_supplicant -Dwext -i$INTERFACE -c/wpa/etc/wpa_supplicant.conf
