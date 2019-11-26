#!/bin/bash

sudo mkdir -p /opt/deluge
sudo rm -rf /opt/deluge/*

sudo chown -R $USER:$USER /opt/deluge

sudo docker run -d \
--name=deluge \
--net=host \
-e PUID=1000 \
-e PGID=1000 \
-e UMASK_SET=022 \
-v /opt/deluge:/config \
-v /mnt/Media/Downloads:/downloads \
--restart unless-stopped \
linuxserver/deluge