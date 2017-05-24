# Run wpa_supplicant
#

FROM debian

MAINTAINER Christopher Byrd "chris@riosec.com"

RUN apt-get update && apt-get --no-install-recommends -y install libnl-3-dev libnl-genl-3-dev libssl-dev && rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /wpa/sbin/entrypoint.sh
COPY wpa_* /wpa/bin/
COPY etc/* /wpa/etc/
ENTRYPOINT ["/wpa/sbin/entrypoint.sh"]
