Nano Node.js with npm
=====================

[![Build status][Build image]][Build]

This is the [Docker](http://docker.com) [Nano](https://github.com/Docker-nano) image for [Node.js](http://nodejs.org) v0.10.30 with [npm](http://npmjs.org) v1.4.21 support.

* Docker Hub image: [`nano/node.js`](https://registry.hub.docker.com/u/nano/node.js/)
* Size: ~14MB

Usage
-----

Try one of the following.

* Run `docker run -it nano/node.js`
* Add `FROM nano/node.js` to your Dockerfile.

Limitations
-----------

npm cannot build native modules (written in C) &ndash; only JavaScript extensions can be installed in the container. If you want to build native extensions add them to the image using Buildroot instead.

  [Build]: http://travis-ci.org/Docker-nano/Node.js
  [Build image]: http://img.shields.io/travis/Docker-nano/Node.js.svg "Build status"

