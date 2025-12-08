FROM alpine:3.23.0

ENV TRANSMISSION_HOME=/var/lib/transmission \
    ALPINE_TRANSMISSION_DAEMON_VERSION=4.0.6-r4

RUN apk add --no-cache --no-progress transmission-daemon==${ALPINE_TRANSMISSION_DAEMON_VERSION}

ENTRYPOINT ["transmission-daemon", "--foreground"]
