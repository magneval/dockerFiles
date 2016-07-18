FROM magneval/rpi-raspbian

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.42.1:3128/
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y  vim
RUN apt-get install -y  octave
RUN apt-get install -y  less
#RUN apt-get install -y sudo vim

RUN mkdir -p /home/octave && \
    mkdir -p /etc/sudoers.d && \
    echo "octave:x:1001:1001:octave,,,:/home/octave:/bin/bash" >> /etc/passwd && \
    echo "octave:x:1001:" >> /etc/group && \
    echo "octave ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/octave && \
    chmod 0440 /etc/sudoers.d/octave && \
    chown octave:octave -R /home/octave

USER octave
ENV HOME /home/octave
WORKDIR /home/octave

CMD ["/usr/bin/octave" ]
