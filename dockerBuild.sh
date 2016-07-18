docker build -t magneval/raspbian   ~/Projets/rasperryDocker/rpi-raspian
docker build -t magneval/nginx  ~/Projets/rasperryDocker/nginx
docker build -t magneval/asciidoctor    ~/Projets/rasperryDocker/asciidoctor
docker build -t magneval/jedit  ~/Projets/rasperryDocker/Jedit/
docker build -t magneval/ltsp-server    ~/Projets/rasperryDocker/ltsp
docker build -t magneval/maven-java8    ~/Projets/rasperryDocker/MavenJava8/
docker build -t magneval/micro_httpd    ~/Projets/rasperryDocker/micro_httpd/
docker build -t magneval/node.js    ~/Projets/rasperryDocker/nodeJs/
docker build -t magneval/sass   ~/Projets/rasperryDocker/sass
docker build -t magneval/generator-gulp-angular ~/Projets/rasperryDocker/generator-gulp-angular
docker build -t magneval/squid-deb-proxy    ~/docker/squid-deb-proxy
docker build -t magneval/squid-deb-proxy    ~/Projets/rasperryDocker/squid-deb-proxy/
docker build -t magneval/squid  ~/Projets/rasperryDocker/squid
docker build -t magneval/archifactory   ~/Projets/rasperryDocker/Archifactory

docker build -t magneval/archifactory   ~/Projets/rasperryDocker/Archifactory
docker build -t magneval/cnc    ~/Projets/rasperryDocker/Raspberry-Pi-CNC-master

# docker-netbeans-master
# goland
# guacamole
# ltsp
# master.zip
# MavenJava8
# NetBeans
# OpenJDK8 -> /home/charles/Projets/rasperryDocker/OpenJDK8
# OpenJDK9
# pxe-master
# ros-comm -> /home/charles/Projets/rasperryDocker/ros-comm/
# ros-viz -> /home/charles/Projets/rasperryDocker/ros-viz/
# scratch
# squid-deb-proxy
# xterm
docker build            -e DISPLAY=$DISPLAY            -v /tmp/.X11-unix:/tmp/.X11-unix            -v `pwd`/.netbeans-docker:/home/developer/.netbeans            -v `pwd`:/workspace Ne
docker build goland/
docker build guacamole
docker build NetBeans
docker build OpenJDK8 -t magneval/openjdk8
docker build ros
docker build ros-viz/
docker build scratch
docker build -t firefox ~/docker/firefox
docker build -t magneval/asciidoctor ~/Projets/rasperryDocker/asciidoctor
docker build -t magneval/generator-gulp-angular ~/Projets/rasperryDocker/generator-gulp-angular
docker build -t magneval/goland docker/goland/
docker build -t magneval/jedit ~/docker/Jedit/
docker build -t magneval/ltsp-server ~/docker/ltsp
docker build -t magneval/maven-java8 ~/docker/MavenJava8/
docker build -t magneval/micro_httpd ~/Projets/rasperryDocker/micro_httpd/
docker build -t magneval/netbeans docker/docker-netbeans-master
docker build -t magneval/netbeans:v8.0.1 docker/docker-netbeans-master
docker build -t magneval/netbeans:v8.1  NetBeans
docker build -t magneval/node.js ~/Projets/rasperryDocker/nodeJs/
docker build -t magneval/openjdk8 OpenJDK8
docker build -t magneval/pxe-master docker/pxe-master/
docker build -t magneval/squid-deb-proxy ~/docker/squid-deb-proxy/
docker build -t magneval/squid ~/docker/squid
docker build            -e DISPLAY=$DISPLAY            -v /tmp/.X11-unix:/tmp/.X11-unix            -v `pwd`/.netbeans-docker:/home/developer/.netbeans            -v `pwd`:/workspace Ne
docker build guacamole
docker build OpenJDK8 -t magneval/openjdk8
docker build ros
docker build rosu
docker build ros-viz/
docker build scratch
docker build -t firefox ~/docker/firefox
docker build -t magneval/asciidoctor ~/docker/asciidoctor/
docker build -t magneval/asciidoctor ~/Projets/rasperryDocker/asciidoctor
docker build -t magneval/asciidoctor ~/Projets/rasperryDocker/asciidoctor
docker build -t magneval/asciidoctor ~/Projets/rasperryDocker/asciidoctor
docker build -t magneval/generator-gulp-angular ~/Projets/rasperryDocker/generator-gulp-angular/
docker build -t magneval/generator-gulp-angular ~/Projets/rasperryDocker/micro_httpd/
docker build -t magneval/generator-gulp-angular ~/Projets/rasperryDocker/micro_httpd/micro_httpd
docker build -t magneval/goland docker/goland/
docker build -t magneval/jedit ~/docker/Jedit/
docker build -t magneval/ltsp-server ~/docker/ltsp
docker build -t magneval/maven-java8 ~/docker/MavenJava8/
docker build -t magneval/micro_httpd ~/Projets/rasperryDocker/micro_httpd/
docker build -t magneval/netbeans docker/docker-netbeans-master
docker build -t magneval/netbeans:v8.0.1 docker/docker-netbeans-master
docker build -t magneval/netbeans:v8.1  NetBeans
docker build -t magneval/node.js ~/Projets/rasperryDocker/nodeJs/
docker build -t magneval/openjdk8 OpenJDK8
docker build -t magneval/pxe-master docker/pxe-master/
docker build -t magneval/squid-deb-proxy ~/docker/squid-deb-proxy/
docker build -t magneval/squid ~/docker/squid
docker build -t xterm ~/docker/xterm
