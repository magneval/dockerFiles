FROM magneval/openjdk8

MAINTAINER magneval

RUN apt-get install -y software-properties-common libxext-dev libxrender-dev libxtst-dev xterm
RUN apt-get install -y jedit

RUN mkdir -p /home/developer && \
    mkdir -p /etc/sudoers.d && \
    echo "developer:x:1001:1001:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:1001:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown developer:developer -R /home/developer

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
ADD jedit.tgz /home/developer

CMD /usr/bin/jedit

