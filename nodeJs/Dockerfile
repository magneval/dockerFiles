FROM magneval/rpi-raspbian

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.42.1:3128/


#RUN apt-get update
#RUN apt-get upgrade
RUN apt-get install -y npm

RUN /usr/bin/npm  install -g bower
RUN ln -s /usr/bin/nodejs /usr/sbin/node

RUN mkdir -p /home/developer && \
    mkdir -p /etc/sudoers.d && \
    echo "developer:x:1001:1001:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:1001:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown developer:developer -R /home/developer

#RUN apt-get update
#RUN apt-get upgrade -y
RUN apt-get install -y git
RUN apt-get install -y vim
RUN apt-get install -y sudo
RUN /usr/bin/npm  install -g gulp

USER developer
ENV HOME /home/developer
WORKDIR /home/developer

CMD /usr/bin/nodejs
