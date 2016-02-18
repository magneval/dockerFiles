FROM magneval/debian

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.0.1:3128/

RUN echo "deb http://httpredir.debian.org/debian jessie-backports main" | tee /etc/apt/sources.list.d/jessie-backports.list
#RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
#RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
#RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
RUN apt-get update
RUN apt-get install -y openjdk-8-jre-headless ca-certificates-java




