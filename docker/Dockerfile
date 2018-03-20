FROM continuumio/miniconda:4.4.10
MAINTAINER Mickael Rigault <mickael.rigault@clermont.in2p3.fr>
MAINTAINER Fabrice Jammes <fabrice.jammes@in2p3.fr>

RUN apt-get -y update && \
    apt-get -y install apt-utils && \
    apt-get -y upgrade && \
    apt-get -y clean

RUN apt-get -y install gcc g++ libgl1-mesa-glx

RUN pip install image==1.5.19 numpy==1.14.2 matplotlib==2.2.0 scikit-image==0.13.1
RUN pip install shapely==1.6.4.post1 iminuit==1.2 pynverse==0.1.4.4 sep==1.0.1

RUN pip install astLib==0.10.0 propobject==0.1.3 modefit==0.2.4 astrobject==0.5.14 \
    pyifu==0.5.16

#ENV GIT_REPO=https://github.com/MickaelRigault/pysedm.git
#ENV GIT_REF=master

ENV GIT_REPO=https://github.com/fjammes/pysedm.git
ENV GIT_REF=parallel

RUN cd $HOME && \
    echo "Cloning branch $GIT_REF of $GIT_REPO" && \
    git clone --depth 1 -b "$GIT_REF" --single-branch  "$GIT_REPO" && \
    cd pysedm && \
    python setup.py install
