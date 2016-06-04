#!/bin/bash -xe
git clone -b gaps-next https://github.com/Airblader/i3.git /opt/i3-gaps-next
# for subsequent runs
cd /opt/i3-gaps-next && git pull
cd /opt/i3-gaps-next &&
  checkinstall --install=no --pkgversion 1 --pakdir /opt/deb --nodoc -y\
  && git clean -f

