#!/bin/bash
sudo docker run -d \
--restart=unless-stopped \
--name sonarr \
-p 8989:8989 \
-e PUID=1000 \
-e PGID=1000 \
-v /opt/sonarr:/config \
-v /mnt/Media/TV_Shows:/tv \
-v /mnt/Media/Downloads:/downloads \
linuxserver/sonarr