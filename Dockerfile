FROM dockernano/buildroot:2016.11
MAINTAINER Bilge <bilge@scriptfusion.com>

COPY    in/buildroot.conf   /root/buildroot/.config
COPY    in/patches          /root/buildroot/patches
