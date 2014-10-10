FROM dockernano/buildroot:2014.08
MAINTAINER Bilge <bilge@scriptfusion.com>

COPY	in/buildroot.conf	/root/buildroot/.config
