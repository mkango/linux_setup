#!/bin/bash

sudo mkdir -p /opt/sonarr
sudo rm -rf /opt/sonarr/*

sudo chown -R $USER:$USER /opt/sonarr

sudo docker run -d \
--restart=unless-stopped \
--name sonarr \
--net=host \
-p 8989:8989 \
-e PUID=1000 \
-e PGID=1000 \
-v /opt/sonarr:/config \
-v /mnt/Media/TV_Shows:/tv \
-v /mnt/Media/Downloads:/downloads \
linuxserver/sonarr