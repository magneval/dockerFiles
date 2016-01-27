FROM magneval/rpi-raspbian

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.42.1:3128/


#EXPOSE 3128
#RUN apt-get update
#RUN apt-get upgrade
RUN apt-get install -y squid-deb-proxy

#RUN sed -i.orig "s/#http_access allow localnet/http_access allow localnet/g" /etc/squid/squid.conf

#RUN /usr/sbin/squid -z
EXPOSE 8000
RUN     chown proxy /var/log/squid-deb-proxy/ && \
	mkdir -p /var/cache/squid-deb-proxy && \
	chown proxy /var/cache/squid-deb-proxy 
RUN     echo ".raspbian.org" >/etc/squid-deb-proxy/mirror-dstdomain.acl.d/20-raspian
RUN     echo "172.17.0.0/12" >/etc/squid-deb-proxy/allowed-networks-src.acl.d/20-raspian

RUN     /usr/sbin/squid3 -zF -f /etc/squid-deb-proxy/squid-deb-proxy.conf
CMD /usr/sbin/squid3 -YC -f /etc/squid-deb-proxy/squid-deb-proxy.conf -N


