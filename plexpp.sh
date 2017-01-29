#!/bin/bash

docker run -it -v /mnt/storage/media-files/tvshows:/data/tvshows dzirkler/comskip:latest /root/plexpp.sh "$1"
