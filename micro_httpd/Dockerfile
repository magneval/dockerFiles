FROM magneval/rpi-raspbian

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.42.1:3128/


#ENV HTTP_PROXY http://172.17.42.1:3128/
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y  vim
#RUN apt-get install -y sudo vim
#RUN apt-get install -y --fix-missing micro-httpd

RUN mkdir -p /home/www && \
    mkdir -p /etc/sudoers.d && \
    echo "www:x:1001:1001:Developer,,,:/home/www:/bin/bash" >> /etc/passwd && \
    echo "www:x:1001:" >> /etc/group && \
    echo "www ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/www && \
    echo "server.document-root = "/home/developer/src/MigrationAngular/" " > /home/www/lighttpd.conf && \
    echo "" >> /home/www/lighttpd.conf && \
    echo "server.port = 80" >> /home/www/lighttpd.conf && \
    echo "" >> /home/www/lighttpd.conf && \
    echo "server.username = "www" " >> /home/www/lighttpd.conf && \
    echo "server.groupname = "www" " >> /home/www/lighttpd.conf && \
    echo "" >> /home/www/lighttpd.conf && \
    echo "mimetype.assign = (" >> /home/www/lighttpd.conf && \
    echo "  ".html" => "text/html", " >> /home/www/lighttpd.conf && \
    echo "  ".txt" => "text/plain"," >> /home/www/lighttpd.conf && \
    echo "  ".jpg" => "image/jpeg"," >> /home/www/lighttpd.conf && \
    echo "  ".png" => "image/png" " >> /home/www/lighttpd.conf && \
    echo ")" >> /home/www/lighttpd.conf && \
    echo "" >> /home/www/lighttpd.conf && \
    echo "static-file.exclude-extensions = ( ".fcgi", ".php", ".rb", "~", ".inc" )" >> /home/www/lighttpd.conf && \
    echo "" >> /home/www/lighttpd.conf && \
    echo "index-file.names = ( "index.html" )" >> /home/www/lighttpd.conf && \
    chmod 0440 /etc/sudoers.d/www && \
    chown www:www -R /home/www

EXPOSE 80/tcp
#RUN apt-get install -y lighttpd
#USER www
#ENV HOME /home/www
#WORKDIR /home/www

CMD lighttpd -D -f /home/www/lighttpd.conf

