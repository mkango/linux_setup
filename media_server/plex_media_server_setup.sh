#!/bin/bash

wget https://downloads.plex.tv/plex-media-server-new/1.18.2.2058-e67a4e892/debian/plexmediaserver_1.18.2.2058-e67a4e892_amd64.deb

sudo dpkg -i plexmediaserver_*.deb

echo -e "\n check status of plexmediaserver\n"

systemctl status plexmediaserver

echo -e "\n enable plex repository \n"

dpkg -L plexmediaserver

echo -e '\nuncomment last line \n'
sed -i '/deb https*/s/^#//' /etc/apt/sources.list.d/plexmediaserver.list
cat /etc/apt/sources.list.d/plexmediaserver.list
echo -e '\n\nuncomment last line done\n'

wget -q https://downloads.plex.tv/plex-keys/PlexSign.key -O - | sudo apt-key add -
sudo apt update -y

sudo netstat -lnpt | grep Plex

echo -e "\ndelete plexmediaserver_*.deb"
rm plexmediaserver_*.deb
echo -e "\ndone\n"