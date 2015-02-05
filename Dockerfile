FROM busybox

RUN mkdir -p /vmx/middle
WORKDIR /vmx

RUN \ 
  wget https://files.vision.ai/releases/middle/middle.linux-stable.tar.gz && \
  cd middle && \                                                         
  gzip -d ../middle.linux-stable.tar.gz && \
  tar xf ../middle.linux-stable.tar && \
  echo "Version is " `cat version`
VOLUME /vmx/middle
