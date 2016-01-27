FROM magneval/rpi-raspbian

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.42.1:3128/
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y  vim
#RUN apt-get install -y sudo vim

RUN mkdir -p /home/www && \
    mkdir -p /etc/sudoers.d && \
    echo "www:x:1001:1001:Developer,,,:/home/www:/bin/bash" >> /etc/passwd && \
    echo "www:x:1001:" >> /etc/group && \
    echo "www ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/www && \
    chmod 0440 /etc/sudoers.d/www && \
    chown www:www -R /home/www

RUN apt-get install -y nginx
#VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]
#VOLUME [ "/var/www/html"]
#USER www
#ENV HOME /home/www
#WORKDIR /home/www

#/*
#    if ($request_method = OPTIONS ) {
#        add_header Access-Control-Allow-Origin "http://example.com";
#        add_header Access-Control-Allow-Methods "GET, OPTIONS";
#        add_header Access-Control-Allow-Headers "Authorization";
#        add_header Access-Control-Allow-Credentials "true";
#        add_header Content-Length 0;
#        add_header Content-Type text/plain;
#        return 200;
#    }
#*/

#RUN echo "www ALL=(ALL) NOPASSWD: ALL" > /etc/nginx/conf.d/options.conf


EXPOSE 80/tcp 443/tcp

#CMD lighttpd -D -f /home/www/lighttpd.conf
CMD ["nginx", "-g", "daemon off;"]


