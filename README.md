Nano Node.js with npm
=====================

[![Build status][Build image]][Build]

This is a [Docker](http://docker.com) container for [Buildroot](http://buildroot.uclibc.org) for building a root file system (rootfs) containing [Node.js](http://nodejs.org) with [npm](http://npmjs.org). Assets for building the final image using the rootfs are placed in the *product* directory.

Building
--------

To build the rootfs follow these steps.

1. `./nano build image` – Build the Docker image locally.
2. `./nano run` – Removes any previous container started by this script and runs a new interactive container.
3. `buildroot-configure` – Configure Buildroot to install desired packages.
4. `buildroot` – Build new rootfs.
5. [Ctrl]+[D] – Exit container.
6. `./nano pull rootfs` – Copies the compressed rootfs tarball from the container to the *product* directory.

Creating a Docker image
-----------------------

1. `docker build -t nano/node.js product`

Travis CI
---------

[Travis](https://travis-ci.org) automatically [builds][Build] the rootfs when this repository is updated and commits the output to a copy of the *product* directory. The result is pushed to a different branch of the same name but with a *product* prefix, e.g. [product/master][Product branch]. This triggers Docker Hub to build the final image at [nano/node.js][Docker Hub repo].

Travis does not support Docker yet so the entire Buildroot environment has to be replicated using `.travis.bash`. This also means Travis can only test the rootfs and not the resulting Docker image.

  [Build]: http://travis-ci.org/Docker-nano/Node.js
  [Build image]: http://img.shields.io/travis/Docker-nano/Node.js.svg "Build status"
  [Product branch]: https://github.com/Docker-nano/Node.js/tree/product/master
  [Docker Hub repo]: https://registry.hub.docker.com/u/nano/node.js/

