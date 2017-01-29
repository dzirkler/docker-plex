FROM linuxserver/plex

# install prereqs
RUN apt-get -y install \
        apt-transport-https \
        ca-certificates && \

    # add GPG key
    curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add - && \

    # verify key id
    apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D && \

    # add docker repo
    add-apt-repository \
        "deb https://apt.dockerproject.org/repo/ ubuntu-$(lsb_release -cs) main" && \

    # update apt-get
    apt-get update && \

    # install docker
    apt-get -y install docker-engine


EXPOSE 32400 32400/udp 32469 32469/udp 5353/udp 1900/udp
VOLUME /config /transcode