FROM magneval/openjdk8

MAINTAINER magneval

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y apt-utils
RUN apt-get install -y maven
RUN    mkdir -p /home/developer
RUN    mkdir -p /etc/sudoers.d/
RUN    echo "developer:x:1001:1001:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
RUN    echo "developer:x:1001:" >> /etc/group
RUN    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer
RUN    chmod 0440 /etc/sudoers.d/developer
RUN    chown developer:developer -R /home/developer
RUN apt-get install -y wget
RUN apt-get install -y sudo
RUN update-ca-certificates -f 
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure


USER developer
ENV HOME /home/developer
WORKDIR /home/developer

RUN    mkdir -p /home/developer/.m2
RUN    echo '<?xml version="1.0" encoding="UTF-8"?>\n\
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"\n\
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"\n\
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">\n\
  <proxies>\n\
    <proxy>\n\
      <id>optional</id>\n\
      <active>true</active>\n\
      <protocol>http</protocol>\n\
      <host>172.17.42.1</host>\n\
      <port>3128</port>\n\
    </proxy>\n\
  </proxies>\n\
</settings>\n' >.m2/settings.xml
#mvn -up  artifact:generate

CMD /bin/bash
