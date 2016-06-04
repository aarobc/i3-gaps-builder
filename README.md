# i3-gaps-builder
Docker file for building i3-gaps from airblader for debian based systems like ubuntu

build with:
`docker run --rm -v ~/i3/i3:/opt/i3-gaps-next -v ~/i3/deb:/opt/deb aarobc/build_i3_env`

Then install: `sudo dpkg -i ~/i3/deb/*.deb`

(NOTE: you may need to run `sudo ldconfig` after installing to register the new libraries)
