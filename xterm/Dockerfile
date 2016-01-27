FROM magneval/rpi-raspbian

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.42.1:3128/


RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y apt-utils xterm xdg-utils

# Replace 1000 with your user / group id
RUN export uid=1001 gid=1001 && \
    mkdir -p /home/developer && \
    mkdir -p /etc/sudoers.d/ && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer
CMD /usr/bin/xterm
