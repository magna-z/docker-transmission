FROM alpine:3.15

RUN apk add --no-cache --no-progress transmission-daemon

ENV TRANSMISSION_HOME /var/lib/transmission

ENTRYPOINT ["transmission-daemon", "--foreground"]
