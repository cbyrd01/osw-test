#!/bin/sh

# get dependencies
# sudo apt-get update && sudo apt-get -y build-dep wpa

git clone git://w1.fi/srv/git/hostap.git
cp hostapd.defconfig hostap/hostapd/.config
cp client.defconfig hostap/wpa_supplicant/.config
cd hostap
git apply ../*.patch
cd wpa_supplicant
make
cp ./wpa_supplicant ./wpa_cli ../../client/
cd ../hostapd
make
cp ./hostapd ../../hostapd/
cd ../hs20/server/ca
./setup.sh
echo 'whatever'|openssl rsa -in server.key -out server.key
cp server.key ca.pem server.pem ../../../../hostapd/etc/
cp ca.pem ../../../../client/etc
cd ../../../../hostapd
docker build -t hostapd .
