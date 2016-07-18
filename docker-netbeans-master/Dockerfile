FROM magneval/rpi-raspbian

ENV HTTP_PROXY http://172.17.42.1:3128/


MAINTAINER magneval

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN    apt-get update && apt-get install -y software-properties-common
RUN    add-apt-repository ppa:webupd8team/java -y
RUN    apt-get update
RUN    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN    apt-get install -y oracle-java8-installer libxext-dev libxrender-dev libxtst-dev
RUN    apt-get clean
RUN    rm -rf /var/lib/apt/lists/*
RUN    rm -rf /tmp/*

ADD state.xml /tmp/state.xml

RUN wget http://download.netbeans.org/netbeans/8.0.1/final/bundles/netbeans-8.0.1-javase-linux.sh -O /tmp/netbeans.sh -q
RUN    chmod +x /tmp/netbeans.sh
RUN    echo 'Installing netbeans'
RUN    /tmp/netbeans.sh --silent --state /tmp/state.xml
RUN    rm -rf /tmp/*

ADD run /usr/local/bin/netbeans

RUN chmod +x /usr/local/bin/netbeans
RUN    mkdir -p /home/developer
RUN    echo "developer:x:1001:1001:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
RUN    echo "developer:x:1001:" >> /etc/group
RUN    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer
RUN    chmod 0440 /etc/sudoers.d/developer
RUN    chown developer:developer -R /home/developer

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
CMD /usr/local/bin/netbeans
