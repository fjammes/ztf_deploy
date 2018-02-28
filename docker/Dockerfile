FROM continuumio/anaconda:5.0.1
MAINTAINER Mickael Rigault <mickael.rigault@clermont.in2p3.fr>
MAINTAINER Fabrice Jammes <fabrice.jammes@in2p3.fr>

RUN apt-get -y update && \
    apt-get -y install apt-utils && \
    apt-get -y upgrade && \
    apt-get -y clean

RUN apt-get -y install gcc g++ libgl1-mesa-glx
RUN pip install shapely iminuit sep

RUN pip install propobject modefit==0.2.4 astrobject==0.5.14 \
    pyifu==0.5.16

RUN cd $HOME && \
    git clone https://github.com/MickaelRigault/pysedm.git && \
    cd pysedm && \
    python setup.py install
