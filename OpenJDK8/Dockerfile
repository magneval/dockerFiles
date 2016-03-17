FROM magneval/debian
#FROM magneval/rpi-raspbian

MAINTAINER magneval

#ENV HTTP_PROXY http://172.17.0.1:3128/

RUN echo "deb http://httpredir.debian.org/debian jessie-backports main" | tee /etc/apt/sources.list.d/jessie-backports.list

RUN apt-get update
RUN apt-get install -y openjdk-8-jdk ca-certificates-java

# see CA_CERTIFICATES_JAVA_VERSION notes above
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure


