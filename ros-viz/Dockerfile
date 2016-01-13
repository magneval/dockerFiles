FROM magneval/rpi-raspian

MAINTAINER magneval

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y wget
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list'
RUN wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | apt-key add -

RUN apt-get update
RUN apt-get upgrade

RUN apt-get install -y python-pip python-setuptools python-yaml python-distribute python-docutils python-dateutil python-six
RUN pip install rosdep rosinstall_generator wstool rosinstall

RUN rosdep init
RUN rosdep update
RUN mkdir ~/ros_catkin_ws
RUN cd ~/ros_catkin_ws

RUN rosinstall_generator desktop --rosdistro indigo --deps --wet-only --exclude roslisp --tar > indigo-desktop-wet.rosinstall
RUN wstool init src indigo-desktop-wet.rosinstall
