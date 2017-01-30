FROM linuxserver/plex

    # update apt-get
RUN apt-get update && \

    #install docker dependencies
    apt-get -y install \
    iptables \
    libltdl7 && \

    # download docker.deb
    curl -o /tmp/docker.deb \
        https://apt.dockerproject.org/repo/pool/main/d/docker-engine/docker-engine_1.13.0-0~ubuntu-xenial_amd64.deb && \
    
    #install docker.deb
    dpkg -i /tmp/docker.deb && \

    rm -f /tmp/docker.deb

# add post-processing script
COPY plexpp.sh /root/plexpp.sh

EXPOSE 32400 32400/udp 32469 32469/udp 5353/udp 1900/udp
VOLUME /config /transcode
