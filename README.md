Transmission Daemon on Alpine
=====

docker create \
--name transmission \
--log-driver=none \
--cpu-shares 2 \
--memory 1024m \
-v /etc/localtime:/etc/localtime:ro \
-v /data/transmission:/var/transmission:rw \
-v /var/media:/var/media:rw \
-p 51413:51413 \
-p 51413:51413/udp \
--restart always \
magnaz/transmission-alpine:1.0 \
--no-portmap \
--no-lpd \
--dht \
--utp \
--peerlimit-torrent 100 \
--allowed "172.18.*.*" \
--encryption-required \
--no-incomplete-dir \
--no-watch-dir \
--download-dir "/var/media" \
--auth \
--username transmission \
--password "wkw2yuuKv*"

docker network connect nginx transmission

Blocklists url: http://john.bitsurge.net/public/biglist.p2p.gz