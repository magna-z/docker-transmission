FROM alpine:latest

RUN apk add --no-cache --no-progress transmission-daemon

ENV TRANSMISSION_HOME /var/transmission

ENTRYPOINT ["transmission-daemon", "--foreground"]
