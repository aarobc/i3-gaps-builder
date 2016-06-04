FROM ubuntu
RUN apt-get update
RUN apt-get install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev\
  libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev\
  libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev

RUN apt-get install -y  xutils-dev apt-utils checkinstall dh-autoreconf git

RUN git clone --recursive https://github.com/Airblader/xcb-util-xrm.git /tmp/xcb-util-xrm
WORKDIR /tmp/xcb-util-xrm
RUN ./autogen.sh
RUN make
RUN make install

ADD generate.sh /opt/

RUN mkdir /opt/i3-gaps-next
WORKDIR /opt
CMD [ "sh", "generate.sh" ]
