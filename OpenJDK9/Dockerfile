FROM magneval/rpi-raspbian

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.42.1:3128/


RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y apt-utils
RUN apt-get install -y openjdk-8-jdk
RUN export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-armhf &&\
	export PATH=$JAVA_HOME/bin:$PATH

RUN apt-get update
RUN apt-get install -y git mercurial zip bzip2 unzip tar curl
RUN apt-get install -y ccache make gcc g++ ca-certificates ca-certificates-java
RUN apt-get install -y libX11-dev libxext-dev libxrender-dev libxtst-dev
RUN apt-get install -y libasound2-dev libcups2-dev libfreetype6-dev
RUN apt-get install -y build-essential ruby-dev pkg-config
#RUN apt-get install -y openjdk-8-jdk
RUN mkdir ~/openjdkathome
RUN cd ~/openjdkathome
RUN git clone https://github.com/hgomez/obuildfactory.git
#RUN gem install fpm
RUN XUSE_NEW_BUILD_SYSTEM=true XBUILD=true ./obuildfactory/openjdk9/linux/standalone-job.sh
#RUN 
#RUN 

CMD /bin/bash

