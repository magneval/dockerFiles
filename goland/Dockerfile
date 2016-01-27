FROM magneval/rpi-raspbian

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.42.1:3128/


RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y apt-utils golang vim

RUN mkdir -p /home/developer && \
    mkdir -p /etc/sudoers.d && \
    echo "developer:x:1000:1000:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:1000:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown developer:developer -R /home/developer

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
