FROM ubuntu:12.04

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# install python and PIP
RUN apt-get install python2.7 -y
RUN apt-get install cython -y
RUN apt-get install python-setuptools -y
RUN easy_install pip

RUN apt-get install build-essential -y
RUN apt-get install gfortran -y
RUN apt-get install -y python-imaging libpng-dev libfreetype6 libfreetype6-dev

RUN pip install scipy scikit-learn matplotlib pandas sympy
RUN pip install pybedtools pysam