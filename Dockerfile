FROM ubuntu

RUN \ 
  apt-get update && apt-get install -y wget tar


RUN mkdir -p /vmx/middle


WORKDIR /vmx

RUN \ 
  wget http://files.vision.ai/releases/middle/middle.linux-stable.tar.gz

RUN  cd middle && tar zxfv ../middle.linux.tar.gz 

VOLUME /vmx/middle
