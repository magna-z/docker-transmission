FROM alpine:3.18

ENV TRANSMISSION_VERSION=4.0.3 \
	  TRANSMISSION_ALPINE_BUILD=r1 \
    TRANSMISSION_HOME=/var/lib/transmission

RUN apk add --no-cache --no-progress transmission-daemon==${TRANSMISSION_VERSION}-${TRANSMISSION_ALPINE_BUILD}

ENTRYPOINT ["transmission-daemon", "--foreground"]
