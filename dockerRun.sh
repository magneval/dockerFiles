
docker run -d --name="squid" -p 3128:3128 --restart=always -v /var/log/squid:/var/log/squid magneval/squid

docker run -d --name="nginx" -p 80 --restart=always -v ~/Projets/magneval.github.io/MigrationAngular/exemples:/var/www/html:ro -v ~/Projets/magneval.github.io/MigrationAngular/172.17.42.1.conf:/etc/nginx/sites-available/172.17.42.1.conf:ro magneval/nginx

docker run -d --name="nginx" --restart=always -v ~/Projets/magneval.github.io/MigrationAngular/exemples:/var/www/html:ro -v ~/Projets/magneval.github.io/MigrationAngular/172.17.42.1.conf:/etc/nginx/sites-available/172.17.42.1.conf:ro -p 80:80 magneval/nginx

docker run -ti -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/generator-gulp-angular /bin/bash

docker run -ti -p :3000:3000 -p :3001:3001 -v ~/Projets/magneval.github.io/:/home/developer/src magneval/generator-gulp-angular /bin/bash

docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor

docker run -ti -v ~/Projets/magneval.github.io/MigrationAngular/exemples:/home/developer/src magneval/sass /bin/bash

docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/developer/src magneval/sass /bin/bash

docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/developer/src magneval/node.js /bin/bash

docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/developer/src magneval/node.js /bin/bash

docker run -ti -p 1044:1044 -p 8080:8080 -v ~/Projets/exemples:/home/developer/src magneval/maven-java8 /bin/bash

docker run -ti -p 1044:1044 -p 8080:8080 -v ~/Projets/JerseyAnnotationProcessor:/home/developer/src magneval/maven-java8 /bin/bash

docker run -ti -v ~/Projets/magneval.github.io/MigrationAngular/exemples:/home/developer/src magneval:maven-java8 /bin/bash

docker run -ti magneval/archifactory

docker run -ti magneval/cnc

docker run -ti magneval/nfs-server

alias dockerX11run='docker run  --privileged  -e DISPLAY=$(echo $DISPLAY | sed "s/^.*:/192.168.2.27:/")'
alias dockerX11run='docker run  --privileged -e DISPLAY=$(echo $DISPLAY | sed "s/^.*:/192.168.2.27:/")'
alias dockerX11run='docker run  --privileged=true -v /tmp/.X11-unix:/tmp/.X11-unix:ro  -e DISPLAY=:0'
alias dockerX11run='docker run  --privileged=true -v /tmp/.X11-unix:/tmp/.X11-unix:ro  -e DISPLAY=$(echo $DISPLAY | sed "s/^.*:/192.168.2.27:/")'
alias dockerX11run='docker run  --privileged=true -v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=unix$DISPLAY'
alias dockerX11run='docker run  --privileged=true -v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=unix$DISPLAY --net host'
alias dockerX11run='docker run  --privileged -u charles -e DISPLAY=$(echo $DISPLAY | sed "s/^.*:/192.168.2.27:/")'
alias dockerX11run='docker run  --privileged -u docker -e DISPLAY=$(echo $DISPLAY | sed "s/^.*:/192.168.2.27:/")'
alias dockerX11run='docker run  --privileged-v /tmp/.X11-unix:/tmp/.X11-unix:ro  -e DISPLAY=$(echo $DISPLAY | sed "s/^.*:/192.168.2.27:/")'
alias dockerX11run='docker run -ti --rm --privileged=true -v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=$DISPLAY --net host '
alias dockerX11run='docker run -ti --rm --privileged=true -v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=$DISPLAY --net host '
alias dockerX11run='docker run -v $HOME:/hosthome:ro -e XAUTHORITY=/hosthome/.Xauthority -e DISPLAY=$(echo $DISPLAY | sed "s/^.*:/192.168.2.27:/")'
alias dockerX11run='docker run -v $HOME:/hosthome:ro -e XAUTHORITY=/hosthome/.Xauthority -e DISPLAY=$(echo $DISPLAY | sed "s/^.*:/192.168.2.27x:/")'
alias dockerX11run='docker run -v $HOME:/hosthome:ro -e XAUTHORITY=/hosthome/.Xauthority --privileged -e DISPLAY=$(echo $DISPLAY | sed "s/^.*:/192.168.2.27:/")'
docker run
docker run
docker run 5aea4aa31cfda8930f78ed97436789d7d2b82a205df74f1af9a03c19ef92a5ca 
docker run 5aea4aa31cfda8930f78ed97436789d7d2b82a205df74f1af9a03c19ef92a5ca  /bin/bash
docker run -d -h -p 3128:3128 magneval/squid
docker run -d  magneval/pxe-master
docker run -d magneval/squid
docker run -d  --name="squid" -p 3128:3128 --restart=always magneval/squid
docker run -d  -p 3128:3128 magneval/squid
docker run -d -p 3128:3128 magneval/squid
docker run -d -p 3128:3128 magneval/squid
docker run -d -p 3128:3128 magneval/squid
docker run -d -p 3128:3128 --name squid --restart=always magneval/squid
docker run -d -p 3128:3128 --name squid --restart=always magneval/squid
docker run -d -p 3128:3128 --name squid --restart=always magneval/squid
docker run -d -p 3128:3128 --name squid --restart=always magneval/squid
docker run -d -p 3128:3128 --restart=always magneval/squid
docker run -d -p 3128:3128 --restart=always magneval/squid
docker run -d -p 3128:3128 --restart=unless-stopped magneval/squid
docker run -d --privileged magneval/pxe-master
docker run -d=true -p 3128:3128 magneval/squid
docker run help
docker run -i -t 5aea4aa31cfda8930f78ed97436789d7d2b82a205df74f1af9a03c19ef92a5ca  /bin/bash
docker run -i -t 5aea4aa31cfda8930f78ed97436789d7d2b82a205df74f1af9a03c19ef92a5ca  /bin/bash
docker run -i -t 5b09ec529cd1
docker run -i -t hypriot/rpi-java8 /bin/bash
docker run -i -t hypriot/rpi-java /bin/bash
docker run -i -t hypriot/rpi-node /bin/bash
docker run -i -t magneval/rpi-raspian /bin/bash
docker run -i -t magneval/rpi-raspian /bin/bash
docker run -i -t magneval/rpi-raspian /bin/bash
docker run -i -t resin/rpi-raspbian /bin/bas
docker run -i -t resin/rpi-raspbian /bin/bash
docker run -i -t resin/rpi-raspbian /bin/bash
docker run -i -t rpi-node /bin/bash
docker run -i -t sdhibit/rpi-raspbian /bin/bash
docker run magneval/openjdk8
docker run --name="squid" -d -p 3128:3128 magneval/squid
docker run --name="squid" -d -p 3128:3128 magneval/squid
docker run --name="squid" -d -p 3128:3128 magneval/squid
docker run -n -d -p 3128:3128 magneval/squid
docker run openjdk8
docker run OpenJDK8
docker run  --rm  -p 3128:3128 magneval/squid
docker run -ti -e DISPLAY=:0  -v /home/charles/workspace/:/workspace magneval/netbeans:v8.1 /usr/bin/xterm
docker run -ti -e DISPLAY=:0  -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH -v /home/charles/workspace/:/workspace magneval/netbeans:v8.1 /bin/bash
docker run -ti -e DISPLAY=:0  -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH -v /home/charles/workspace/:/workspace magneval/netbeans:v8.1 /usr/bin/xterm
docker run -ti -e DISPLAY=:0  -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH -v /home/charles/workspace/:/workspace magneval/netbeans:v8.1 /usr/bin/xterm
docker run -ti magneval/
docker run -ti  magneval/goland /bin/bash
docker run -ti  magneval/goland /bin/bash
docker run -ti  magneval/goland /bin/bash
docker run -ti magneval/node.js /bin/bash
docker run -ti magneval/node.js /bin/bash
docker run -ti magneval/node.js /bin/bash
docker run -ti magneval/node.js /bin/bash
docker run -ti magneval/node.js /bin/bash
docker run -ti -p 3128:3128 magneval/squid
docker run -ti --privileged=true -v ~/Projets/magneval.github.io/MigrationAngular/exemples:/var/www/html:ro 
docker run -ti --privileged=true -v ~/Projets/magneval.github.io/MigrationAngular/exemples:/var/www/html:ro  -p :80:8080 magneval/nginx /bin/bash
docker run -ti --privileged=true -v ~/Projets/magneval.github.io/MigrationAngular/exemples:/var/www/html:ro  -p80:8080 magneval/nginx /bin/bash
docker run -ti --privileged=true -v ~/Projets/magneval.github.io/MigrationAngular/exemples:/var/www/html:ro  -p :80:80 magneval/nginx /bin/bash
docker run -ti --privileged=true -v ~/Projets/magneval.github.io/MigrationAngular/exemples:/var/www/html:ro  -p 80 magneval/nginx /bin/bash
docker run -ti -r magneval/asciidoctor
docker run -ti --rm            -e DISPLAY=:0          -v /home/charles/.Xauthority:/home/developer/.Xauthority         -v `pwd`:/workspace            magneval/netbeans:v8.1 /bin/bash 
docker run -ti --rm  -e DISPLAY=:0  -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH  -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/jedit /bin/bash
docker run -ti --rm            -e DISPLAY=172.17.42.1:0            -v /tmp/.X11-unix:/tmp/.X11-unix            -v `pwd`:/workspace            magneval/netbeans:v8.1 /bin/bash 
docker run -ti --rm            -e DISPLAY=172.192.168.2.27:0          -v /tmp/.X11-unix:/tmp/.X11-unix            -v `pwd`:/workspace            magneval/netbeans:v8.1 /bin/bash 
docker run -ti --rm            -e DISPLAY=192.168.2.27:0          -v /home/charles/.Xauthority:/home/developer/.Xauthority         -v `pwd`:/workspace            magneval/netbeans:v8.1 /bin/bash 
docker run -ti --rm            -e DISPLAY=192.168.2.27:0          -v /home/charles/.Xauthority            -v `pwd`:/workspace            magneval/netbeans:v8.1 /bin/bash 
docker run -ti --rm            -e DISPLAY=192.168.2.27:0          -v /h/ome/chdeveloper/Xauthority         -v `pwd`:/workspace            magneval/netbeans:v8.1 /bin/bash 
docker run -ti --rm            -e DISPLAY=192.168.2.27:0          -v /tmp/.X11-unix:/tmp/.X11-unix            -v `pwd`:/workspace            magneval/netbeans:v8.1 /bin/bash 
docker run -ti --rm        -e DISPLAY=$DISPLAY        -v /tmp/.X11-unix:/tmp/.X11-unix        firefox
docker run -ti --rm            -e DISPLAY=$DISPLAY            -v /tmp/.X11-unix:/tmp/.X11-unix            -v `pwd`/.netbeans-docker:/home/developer/.netbeans \
docker run -ti --rm            -e DISPLAY=$DISPLAY            -v /tmp/.X11-unix:/tmp/.X11-unix            -v `pwd`/.netbeans-docker:/home/developer/.netbeans            -v `pwd`:/workspace magneval/netbeans
docker run -ti --rm            -e DISPLAY=$DISPLAY            -v /tmp/.X11-unix:/tmp/.X11-unix            -v `pwd`:/workspace            magneval/netbeans:v8.1 /bin/bash 
docker run -ti --rm            -e DISPLAY=$DISPLAY            -v /tmp/.X11-unix:/tmp/.X11-unix            -v `pwd`:/workspace            magneval/netbeans:v8.1 /bin/bash 
docker run -ti --rm            -e DISPLAY=$DISPLAY            -v /tmp/.X11-unix:/tmp/.X11-unix            -v `pwd`:/workspace            magneval/netbeans:v8.1 /bin/bash 
docker run -ti --rm            -e DISPLAY=$DISPLAY            -v /tmp/.X11-unix:/tmp/.X11-unix            -v `pwd`:/workspace            magneval/netbeans:v8.1 /bin/bash 
docker run -ti --rm            -e DISPLAY=$DISPLAY            -v /tmp/.X11-unix:/tmp/.X11-unix            -v `pwd`:/workspace            magneval/netbeans:v8.1 /bin/bash 
docker run -ti --rm            -e DISPLAY=$DISPLAY            -v /tmp/.X11-unix:/tmp/.X11-unix            -v `pwd`:/workspace            magneval/netbeans:v8.1 /bin/bash 
docker run -ti --rm            -e DISPLAY=$DISPLAY            -v /tmp/.X11-unix:/tmp/.X11-unix            -v `pwd`:/workspace            magneval/netbeans:v8.1 /bin/bash 
docker run -ti --rm        -e DISPLAY=$DISPLAY        -v /tmp/.X11-unix:/tmp/.X11-unix        xterm
docker run -ti --rm magneval/asciidoctor
docker run -ti --rm magneval/asciidoctor
docker run -ti --rm magneval/asciidoctor /bin/bash
docker run -ti --rm magneval/asciidoctor /bin/bash
docker run -ti --rm magneval/asciidoctor /bin/bash
docker run -ti --rm magneval/asciidoctor /bin/bash
docker run -ti --rm magneval/asciidoctor /bin/bash
docker run -ti --rm  magneval/ltsp-server /bin/bash
docker run -ti --rm  magneval/maven-java8
docker run -ti --rm  magneval/maven-java8
docker run -ti --rm  magneval/maven-java8
docker run -ti --rm  magneval/maven-java8
docker run -ti --rm  magneval/maven-java8
docker run -ti --rm  magneval/maven-java8
docker run -ti --rm  magneval/maven-java8
docker run -ti --rm  magneval/maven-java8
docker run -ti --rm  magneval/node.js
docker run -ti -rm magneval/node.js
docker run -ti --rm  magneval/pxe-master /bin/bash 
docker run -ti --rm  magneval/pxe-master /bin/bash 
docker run -ti --rm  magneval/squid /bin/bash
docker run -ti --rm  magneval/squid /bin/bash
docker run -ti --rm  -p 3128:3128 magneval/ltsp-server
docker run -ti --rm  -p 3128:3128 magneval/maven-java8
docker run -ti --rm  -p 3128:3128 magneval/squid
docker run -ti --rm  -p 3128:3128 magneval/squid
docker run -ti --rm  -p 3128:3128 magneval/squid 
docker run -ti --rm  -p 3128:3128 magneval/squid 
docker run -ti --rm  -p 3128:3128 magneval/squid 
docker run -ti --rm  -p 3128:3128 magneval/squid 
docker run -ti --rm  -p 3128:3128 magneval/squid 
docker run -ti --rm  -p 3128:3128 magneval/squid 
docker run -ti --rm  -p 3128:3128 magneval/squid 
docker run -ti --rm  -p 3128:3128 magneval/squid 
docker run -ti --rm  -p 3128:3128 magneval/squid 
docker run -ti --rm  -p 3128:3128 magneval/squid 
docker run -ti --rm  -p 3128:3128 magneval/squid /bin/bash
docker run -ti --rm  -p:3128:3128 magneval/squid /bin/bash
docker run -ti --rm  -p3128:3128 magneval/squid /bin/bash
docker run -ti --rm  -p 8000:8000 magneval/squid-de
docker run -ti --rm  -p 8000:8000 magneval/squid-deb-proxy
docker run -ti --rm  -p 8000:8000 magneval/squid-deb-proxy
docker run -ti --rm  -p 8000:8000 magneval/squid-deb-proxy
docker run -ti --rm  -p 8000:8000 magneval/squid-deb-proxy
docker run -ti --rm  -p 8000:8000 magneval/squid-deb-proxy /bin/bash
docker run -ti --rm  -p 8000:8000 magneval/squid-deb-proxy /bin/bash
docker run -ti --rm  -P magneval/squid /bin/bash
docker run -ti --rm --privileged magneval/pxe-master 
docker run -ti --rm --privileged magneval/pxe-master 
docker run -ti --rm --privileged magneval/pxe-master /bin/bash 
docker run -ti --rm --privileged magneval/pxe-master /bin/bash 
docker run -ti --rm --privileged magneval/pxe-master /bin/bash 
docker run -ti --rm -privileged magneval/pxe-master /bin/bash 
docker run -ti --rm -v  magneval/asciidoctor 
docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/developer/src magneval/micro_http /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/developer/src magneval/micro_httpd /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/developer/src magneval/micro_httpd /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/developer/src magneval/micro_httpd /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/developer/src magneval/micro_httpd /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/developer/src magneval/node.js
docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/developer/src magneval/node.js /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/developer/src magneval/node.js /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/developer/src magneval/node.js /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/developer/src magneval/node.js /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/developer/src magneval/node.js /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/:/home/www/src magneval/micro_httpd /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor 
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor 
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor 
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor 
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor 
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor 
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor^C
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor /home/developer/
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor /home/developer/asciidoctor.sh
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor /home/developer/asciidoctor.sh
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor /home/developer/asciidoctor.sh
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor /usr/bin/asciidoctor -D target/
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor /usr/bin/asciidoctor -D target -o presentation.html 
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor /usr/bin/asciidoctor -D target -o presentation.html Readme.adoc
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor /usr/bin/asciidoctor -T templates/slim  -D src/target -o index.html src/Readme.adoc
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor /usr/bin/asciidoctor -T templates/slim  -D src/target -o presentation.html src/Readme.adoc
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor /usr/bin/asciidoctor -T templates/slim  -D src/target -o presentation.html src/Readme.adoc
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor /usr/bin/asciidoctor -T templates/slim  -D target -o presentation.html Readme.adoc
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/jedit
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/jedit
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/jedit /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/jedit /bin/bash
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/jeditedit
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/ magneval/asciidoctor 
docker run -ti --v /home/charles/workspace/:/workspace magneval/netbeans:v8.1 /usr/bin/xterm
docker run -ti -v /home/charles/workspace/:/workspace magneval/netbeans:v8.1 /usr/bin/xterm
docker run -ti -v ~/Projets/magneval.github.io/MigrationAngular/exemples:/var/www/html:ro -v ~/Projets/magneval.github.io/MigrationAngular/172.17.42.1.conf:/etc/nginx/sites-available/172.17.42.1.conf:ro  -p 80ax
docker run -ti -v ~/Projets/magneval.github.io/MigrationAngular/exemples:/var/www/html:ro -v ~/Projets/magneval.github.io/MigrationAngular/172.17.42.1.conf:/etc/nginx/sites-available/172.17.42.1.conf:ro -p 80 gx
docker run -ti -v ~/Projets/magneval.github.io/MigrationAngular/exemples:/var/www/html:ro -v ~/Projets/magneval.github.io/MigrationAngular/172.17.42.1.conf:/etc/nginx/sites-available/172.17.42.1.conf:ro  -p 80 magneval/nginx
docker run -ti -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH -v /home/charles/workspace/:/workspace magneval/netbeans:v8.1 /bin/bash
docker run -ti -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH xterm
PXECID=$(docker run -d jpetazzo/pxe)
PXECID=$(docker run -d  magneval/pxe-master)
PXECID=$(docker run -d  magneval/pxe-master}
PXECID=$(docker run -d --privileged magneval/pxe-master)
