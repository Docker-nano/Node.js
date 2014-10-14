FROM scratch
MAINTAINER Bilge <bilge@scriptfusion.com>

ADD	rootfs.tar.xz	/

ENV	NODE_PATH	/usr/lib/node_modules

CMD	["/usr/bin/node"]
