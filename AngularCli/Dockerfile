FROM magneval/rpi-raspbian

MAINTAINER magneval

ENV HTTP_PROXY ""
ENV HTTPS_PROXY ""

EXPOSE 4200 49152

USER root
RUN apt-get update -y
RUN apt-get install -y curl apt-transport-https
RUN apt-get install -y ca-certificates apt-utils
RUN /usr/sbin/update-ca-certificates -f 
RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -

RUN echo 'deb https://deb.nodesource.com/node_4.x jessie main' > /etc/apt/sources.list.d/nodesource.list
RUN echo 'deb-src https://deb.nodesource.com/node_4.x jessie main' >> /etc/apt/sources.list.d/nodesource.list
RUN apt-get update -y

RUN apt-get install -y nodejs

RUN /usr/bin/npm config set proxy ""
RUN /usr/bin/npm config set https-proxy ""

#RUN /usr/bin/npm config set proxy "http://172.17.42.1:3128/"
#RUN /usr/bin/npm config set https-proxy "http://172.17.42.1:3128/"

#RUN /usr/bin/npm config set registry http://registry.npmjs.org/

RUN /usr/bin/npm  install -g typings
RUN /usr/bin/npm  install -g angular-cli
#COPY watchman_4.5.0_amd64.deb watchman_4.5.0_amd64.deb
#RUN dpkg -i ./watchman_4.5.0_amd64.deb

#RUN chown developer:developer -R /home/developer

#USER developer
#ENV HOME /home/developer
#WORKDIR /home/developer
#RUN /usr/bin/npm install --save-dev babel-preset-es2015
#WORKDIR /home/developer/src
#RUN ng completion >> ~/.bashrc
#ENTRYPOINT ["ng"]

#CMD ["serve"]


