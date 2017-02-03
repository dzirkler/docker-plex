#!/bin/bash

docker run -it -v /mnt/storage/media-files:/data dzirkler/comskip:latest /root/plexpp.sh "$1"
