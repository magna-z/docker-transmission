FROM alpine:3.4

MAINTAINER Maxim Zalysin <zalysin.m@gmail.com>

LABEL container_version="1.0"
LABEL transmission_version="2.92-r2"

RUN apk add --no-cache transmission-daemon

ENV TRANSMISSION_HOME /var/transmission

EXPOSE 9091 51413 51413/udp

VOLUME ["/var/transmission"]

ENTRYPOINT ["/usr/bin/transmission-daemon", "--foreground"]