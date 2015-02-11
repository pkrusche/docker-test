FROM ubuntu:12.04

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get -y install openssh-server; mkdir -p /var/run/sshd; locale-gen en_US en_US.UTF-8

# compilers and basic tools
RUN apt-get install -y gfortran build-essential make gcc build-essential git-core curl wget vim-tiny nano
RUN apt-get install -y python2.7 python2.7-dev
RUN apt-get install -y libsqlite3-dev sqlite3 libmysqlclient-dev
RUN apt-get install -y libxml2-dev libxslt-dev
RUN wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py; python get-pip.py; rm -f /get-pip.py
RUN apt-get install -y python-imaging libpng-dev libfreetype6 libfreetype6-dev
