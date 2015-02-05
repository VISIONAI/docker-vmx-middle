FROM busybox

RUN mkdir -p /vmx/middle
WORKDIR /vmx

RUN \ 
  wget http://files.vision.ai/releases/middle/middle.linux-master.tar.gz && \
  cd middle && \                                                         
  gzip -d ../middle.linux-master.tar.gz && \
  tar xf ../middle.linux-master.tar && \
  echo "Version is " `cat version`

VOLUME /vmx/middle
