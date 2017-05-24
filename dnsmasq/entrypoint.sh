#!/bin/ash
true ${INTERFACE:=wlan0}
true ${DHCP_RANGE:=172.17.2.50,172.17.2.100}
sed -i "s/interface=.*/interface=$INTERFACE/g" /etc/dnsmasq.conf
sed -i "s/dhcp-range=.*\,1h/dhcp-range=$DHCP_RANGE\,1h/g" /etc/dnsmasq.conf
exec dnsmasq -d
