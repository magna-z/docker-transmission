FROM alpine:3.21.3

ENV TRANSMISSION_HOME=/var/lib/transmission \
    ALPINE_TRANSMISSION_DAEMON_VERSION=4.0.6-r0

RUN apk add --no-cache --no-progress transmission-daemon==${ALPINE_TRANSMISSION_DAEMON_VERSION}

ENTRYPOINT ["transmission-daemon", "--foreground"]
