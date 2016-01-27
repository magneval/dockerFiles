FROM magneval/rpi-raspbian

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.42.1:3128/


RUN apt-get install -y nfs-kernel-server

RUN mkdir -p /home/developer && \
    mkdir -p /etc/sudoers.d && \
    echo "developer:x:1001:1001:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:1001:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown developer:developer -R /home/developer

#RUN apt-get install -y sudo vim
RUN mkdir -p /exports

VOLUME /exports

EXPOSE 111/udp 2049/tcp

RUN mkdir -p /etc/sv/nfs
ADD nfs.init /etc/sv/nfs/run
ADD nfs.stop /etc/sv/nfs/finish
ADD nfs_setup.sh /usr/local/bin/nfs_setup
RUN apt-get install -y runit inotify-tools -qq
RUN chmod +x /etc/sv/nfs/* /usr/local/bin/nfs_setup

RUN	echo "sunrpc          111/tcp         portmapper" >> /etc/services && \
	echo "sunrpc          111/udp         portmapper" >> /etc/services && \
	echo "nfs          2049/tcp         portmapper" >> /etc/services && \
	echo "nfs          2049/udp         portmapper" >> /etc/services
#USER developer
#ENV HOME /home/developer
#WORKDIR /home/developer

CMD /bin/bash
#CMD /usr/bin/jedit
#ENTRYPOINT ["/usr/local/bin/nfs_setup"]


