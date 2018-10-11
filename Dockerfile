FROM dockernano/buildroot:2018.02
MAINTAINER Bilge <bilge@scriptfusion.com>

COPY    in/buildroot.conf   /root/buildroot/.config
COPY    in/busybox.conf     /root/busybox/.config
