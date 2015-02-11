FROM ubuntu:12.04

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# install python and PIP
RUN apt-get install python2.7
RUN apt-get install cython
RUN apt-get install python-setuptools
RUN easy_install pip

