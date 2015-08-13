FROM busybox

RUN mkdir -p /vmx/middle
WORKDIR /vmx

RUN \ 
  wget -q https://files.vision.ai/vmx/VMXmiddle/Linux/VMXmiddle_Linux.latest.tar.gz && \
  cd middle && \                                                         
  gzip -d ../VMXmiddle_Linux.latest.tar.gz && \
  tar xf ../VMXmiddle_Linux.latest.tar && \
  rm ../VMXmiddle_Linux.latest.tar && \
  echo "Version is " `cat version`

VOLUME /vmx/middle
