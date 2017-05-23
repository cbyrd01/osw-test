# osw-test
Open Secure Wireless Test Environment

Scripts and configuration to stand up an "[Open Secure Wireless](http://www.riosec.com/articles/open-secure-wireless-20)" testing enviornment using Docker, hostapd and dnsmasq.

Developed and tested on Debian "jessie" 8.8. 

To set up, run `./build.sh`.

To start hostapd, run:

`docker run -e SSID=myexample -e INTERFACE=wlan0 -e NAI_REALM=wifi.example.org --privileged --net="host" hostapd`
