FROM magneval/openjdk8

MAINTAINER magneval

RUN apt-get install -y wget
RUN apt-get install -y sudo
RUN apt-get install -y zip
RUN apt-get install -y tomcat8
RUN    mkdir -p /home/developer
RUN    mkdir -p /etc/sudoers.d/
RUN    echo "developer:x:1001:1001:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
RUN    echo "developer:x:1001:" >> /etc/group
RUN    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer
RUN    chmod 0440 /etc/sudoers.d/developer
RUN    echo "alias ll='ls -ail --color=auto' " >> /home/developer/.bashrc
RUN    chown developer:developer -R /home/developer
RUN update-ca-certificates -f 
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure

ADD activiti-5.19.0.2.zip activiti.zip
RUN unzip activiti.zip

RUN cp activiti-5.19.0.2/wars/activiti-* /var/lib/tomcat8/webapps/

#USER developer
#ENV HOME /home/developer
#WORKDIR /home/developer

EXPOSE 8080

#RUN    mkdir -p /home/developer/.m2
#RUN    echo '<?xml version="1.0" encoding="UTF-8"?>\n\
#<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"\n\
#          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"\n\
#          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">\n\
#  <proxies>\n\
#    <proxy>\n\
#      <id>optional</id>\n\
#      <active>true</active>\n\
#      <protocol>http</protocol>\n\
#      <host>172.17.42.1</host>\n\
#      <port>3128</port>\n\
#    </proxy>\n\
#  </proxies>\n\
#</settings>\n' >.m2/settings.xml
#mvn -up  artifact:generate

ENV CATALINA_BASE /var/lib/tomcat8/
CMD /usr/share/tomcat8/bin/catalina.sh  run
