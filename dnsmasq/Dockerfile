## Run dnsmasq
#

FROM alpine

MAINTAINER Christopher Byrd "chris@riosec.com"

RUN apk --no-cache add dnsmasq

COPY dnsmasq.conf /etc/dnsmasq.conf

ENTRYPOINT ["dnsmasq", "-k"]
