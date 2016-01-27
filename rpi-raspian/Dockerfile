FROM resin/rpi-raspbian:jessie

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.42.1:3128/

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y ca-certificates
RUN /usr/sbin/update-ca-certificates -f 
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
#RUN apt-get install -y ca-certificates-java

