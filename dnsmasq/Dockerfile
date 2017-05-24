## Run dnsmasq
#

FROM alpine

MAINTAINER Christopher Byrd "chris@riosec.com"

RUN apk --no-cache add dnsmasq

COPY entrypoint.sh /dns/entrypoint.sh
#COPY dnsmasq.conf /etc/dnsmasq.conf

ENTRYPOINT ["/dns/entrypoint.sh"]
