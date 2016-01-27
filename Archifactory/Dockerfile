FROM magneval/rpi-raspbian

MAINTAINER magneval

ENV HTTP_PROXY http://172.17.42.1:3128/


#ENV HTTP_PROXY http://172.17.42.1:3128/
#RUN apt-get update
#RUN apt-get upgrade -y
#RUN apt-get install -y ca-certificates
#RUN /usr/sbin/update-ca-certificates -f 
RUN apt-get install -y ca-certificates-java
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
RUN apt-get install -y openjdk-8-jre-headless zip

ADD http://dl.bintray.com/content/jfrog/artifactory/jfrog-artifactory-oss-4.4.2.zip artifactory.zip
RUN unzip artifactory.zip

#RUN sed -i -e 's/Xmx2g/Xmx512m/g' artifactory-*/bin/artifactory.default
EXPOSE 8081
ENTRYPOINT artifactory-*/bin/artifactory.sh

