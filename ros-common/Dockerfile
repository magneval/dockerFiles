FROM magneval/rpi-raspbian

MAINTAINER magneval

ENV HTTP_PROXY ""


RUN apt-get install -y wget
#RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list'
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list'
#RUN wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | apt-key add -
RUN wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | apt-key add -
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y python-pip python-setuptools python-yaml python-distribute python-docutils python-dateutil python-six
RUN pip install rosdep rosinstall_generator wstool rosinstall

RUN mkdir -p /home/developer && \
    mkdir -p /etc/sudoers.d && \
    echo "developer:x:1001:1001:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:1001:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown developer:developer -R /home/developer

USER developer
ENV HOME /home/developer
WORKDIR /home/developer

RUN export HTTP_PROXY=""
RUN sudo rosdep init
RUN rosdep update
RUN mkdir ~/ros_catkin_ws
RUN cd ~/ros_catkin_ws

RUN rosinstall_generator ros_comm --rosdistro indigo --deps --wet-only --exclude roslisp --tar > indigo-ros_comm-wet.rosinstall
RUN wstool init src indigo-ros_comm-wet.rosinstall
