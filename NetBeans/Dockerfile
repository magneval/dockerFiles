FROM magneval/openjdk8

MAINTAINER magneval

RUN apt-get install -y software-properties-common libxext-dev libxrender-dev libxtst-dev xterm
ADD netbeans-8.1-javase-linux.sh /tmp/netbeans.sh

RUN chmod +x /tmp/netbeans.sh
#ADD state.xml /tmp/state.xml
#RUN /tmp/netbeans.sh --silent --state /tmp/state.xml && \
#   rm -rf /tmp/*

ADD run /usr/local/bin/netbeans

RUN chmod +x /usr/local/bin/netbeans && \
    mkdir -p /home/developer && \
    mkdir -p /etc/sudoers.d && \
    echo "developer:x:1000:1000:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:1000:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown developer:developer -R /home/developer

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
CMD /usr/local/bin/netbeans

