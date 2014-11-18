FROM ubuntu

RUN \ 
  apt-get update && apt-get install -y wget tar


RUN mkdir -p /vmx/middle


WORKDIR /vmx

RUN \ 
  wget http://files.vision.ai/releases/middle/middle.linux-master.tar.gz

RUN  cd middle && tar zxfv ../middle.linux-master.tar.gz 

VOLUME /vmx/middle
