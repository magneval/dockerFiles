FROM resin/rpi-raspbian:jessie

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.42.1:3128/
ENV HTTPS_PROXY http://172.17.42.1:3128/
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y ca-certificates apt-utils
RUN /usr/sbin/update-ca-certificates -f 


