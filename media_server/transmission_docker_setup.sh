#!/bin/bash

sudo mkdir -p /opt/transmission
sudo rm -rf /opt/transmission/*

sudo chown -R $USER:$USER /opt/transmission

sudo docker run -d \
--name=transmission \
--restart=always \
-v /opt/transmission:/config \
-v /mnt/Media/Downloads:/downloads \
-v /mnt/Media/Downloads/torrent:/watch \
-e PGID=1000 \
-e PUID=1000 \
-p 9091:9091 -p 51413:51413 \
-p 51413:51413/udp \
linuxserver/transmission
