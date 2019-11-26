#!/bin/bash

sudo mkdir -p /opt/jackett

sudo chown -R $USER:$USER /opt/jackett

sudo docker run -d \
--name=jackett \
-e PUID=1000 \
-e PGID=1000 \
-p 9117:9117 \
-v /opt/jackett:/config \
-v /mnt/Media/Downloads:/downloads \
--restart unless-stopped \
linuxserver/jackett