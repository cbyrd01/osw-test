# Run hostapd
#

FROM debian

MAINTAINER Christopher Byrd "chris@riosec.com"

RUN apt-get update && apt-get --no-install-recommends -y install libnl-3-dev libnl-genl-3-dev libssl-dev && rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /hostapd/sbin/entrypoint.sh
COPY hostapd /hostapd/sbin/hostapd
COPY etc/* /hostapd/etc/
ENTRYPOINT ["/hostapd/sbin/entrypoint.sh"]
