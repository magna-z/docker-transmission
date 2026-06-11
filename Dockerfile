FROM alpine:3.24.0

ENV TRANSMISSION_HOME=/var/lib/transmission \
    ALPINE_TRANSMISSION_DAEMON_VERSION=4.1.2-r0

RUN apk add --no-cache --no-progress transmission-daemon==${ALPINE_TRANSMISSION_DAEMON_VERSION}

ENTRYPOINT ["transmission-daemon", "--foreground"]
