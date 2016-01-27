FROM magneval/rpi-raspbian

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.42.1:3128/


#EXPOSE 3128
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y ltsp-server-standalone

#RUN sed -i.orig "s/#http_access allow localnet/http_access allow localnet/g" /etc/squid/squid.conf

#RUN /usr/sbin/squid -z
#CMD /usr/sbin/squid -N

