FROM magneval/rpi-raspian

MAINTAINER magneval

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y apt-utils asciidoctor asciidoc

RUN    mkdir -p /home/developer
RUN    mkdir -p /etc/sudoers.d/
RUN    echo "developer:x:1001:1001:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
RUN    echo "developer:x:1001:" >> /etc/group
RUN    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer
RUN    chmod 0440 /etc/sudoers.d/developer
RUN    chown developer:developer -R /home/developer
RUN    gem install asciidoctor tilt thread_safe
RUN    gem install slim --version 2.1.0
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y git
#RUN    git clone git://github.com/asciidoctor/asciidoctor-reveal.js.git
RUN gem install asciidoctor-diagram

RUN apt-get install -y openjdk-8-jre graphviz


USER developer
ENV HOME /home/developer
WORKDIR /home/developer
RUN    git clone https://github.com/asciidoctor/asciidoctor-reveal.js.git
RUN    git clone -b 3.0.0 https://github.com/hakimel/reveal.js.git
RUN    mkdir -p /home/developer/src
RUN    echo "#!/bin/sh \n\
/usr/local/bin/asciidoctor -D src/target/ -o presentation.html -T asciidoctor-reveal.js/templates/slim/ -r asciidoctor-diagram src/Readme.adoc \n\
mkdir -p /home/developer/src/target/reveal.js \n\
cp -r reveal.js/js src/target/reveal.js/js/ \n\
cp -r reveal.js/css src/target/reveal.js/css	\n\
cp -r reveal.js/lib src/target/reveal.js/lib	\n\
cp -r reveal.js/plugin src/target/reveal.js/plugin	\n\
" > asciidoctor.sh
RUN    chmod +x asciidoctor.sh

#CMD /usr/local/bin/asciidoctor
CMD /home/developer/asciidoctor.sh


