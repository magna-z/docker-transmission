FROM alpine:3.18

ENV TRANSMISSION_VERSION=4.0.4 \
	  TRANSMISSION_ALPINE_BUILD=r0 \
    TRANSMISSION_HOME=/var/lib/transmission

RUN apk add --no-cache --no-progress transmission-daemon==${TRANSMISSION_VERSION}-${TRANSMISSION_ALPINE_BUILD}

ENTRYPOINT ["transmission-daemon", "--foreground"]
