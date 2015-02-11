FROM ubuntu:14.04

RUN apt-get update
RUN apt-get upgrade -y

# install python and PIP
RUN apt-get install python2.7 python2.7-dev -y
RUN apt-get install cython -y
RUN apt-get install python-setuptools -y
RUN easy_install -U distribute
RUN easy_install -U pip

RUN apt-get install build-essential -y
RUN apt-get install gfortran -y
RUN apt-get install -y libatlas-base-dev
RUN apt-get install -y python-imaging libpng-dev libfreetype6 libfreetype6-dev
RUN apt-get install pkg-config -y
RUN pip install scipy scikit-learn pandas sympy
RUN pip install matplotlib
RUN pip install pybedtools pysam
