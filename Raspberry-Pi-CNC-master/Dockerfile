FROM magneval/rpi-raspbian

ENV HTTP_PROXY http://172.17.42.1:3128/

#RUN apt-get update
#RUN apt-get upgrade

RUN apt-get install -y python-dev
RUN apt-get install -y python-pip
RUN pip install flask
RUN pip install flask-socketio

RUN apt-get install -y zip

RUN    mkdir -p /home/developer
RUN    mkdir -p /etc/sudoers.d/
RUN    echo "developer:x:1001:1001:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
RUN    echo "developer:x:1001:" >> /etc/group
RUN    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer
RUN    chmod 0440 /etc/sudoers.d/developer
RUN    chown developer:developer -R /home/developer

USER developer
ENV HOME /home/developer
WORKDIR /home/developer

ADD https://github.com/Protoneer/Raspberry-Pi-CNC/archive/master.zip /home/developer/Raspberry-Pi-CNC.zip
RUN sudo   chown developer:developer -R /home/developer/Raspberry-Pi-CNC.zip
RUN unzip /home/developer/Raspberry-Pi-CNC.zip

#CMD /usr/local/bin/asciidoctor
CMD /bin/bash


