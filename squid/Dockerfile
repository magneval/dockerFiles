FROM magneval/rpi-raspbian

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.42.1:3128/


EXPOSE 3128
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y squid
#RUN apt-get install -y squid-deb-proxy

#RUN mv /etc/squid/squid.conf /etc/squid/squid.conf.orig
#RUN cat /etc/squid/squid.conf.orig|sed "s/#http_access allow localnet/http_access allow localnet/g" > /etc/squid/squid.conf
RUN sed -i.orig "s/#http_access allow localnet/http_access allow localnet/g" /etc/squid/squid.conf

RUN /usr/sbin/squid -z
CMD /usr/sbin/squid -N

