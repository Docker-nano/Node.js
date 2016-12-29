Nano Node.js with npm
=====================

[![Build status][Build image]][Build]

This is the [Docker](http://docker.com) [Nano](https://github.com/Docker-nano) image for [Node.js](http://nodejs.org)
v6.7.0 with [npm](http://npmjs.org) v&lt;BROKEN> support.

* Docker Hub image: [`nano/node.js`](https://registry.hub.docker.com/u/nano/node.js/)
* Size: ~26MB

Usage
-----

Try one of the following.

* Run `docker run -it nano/node.js` – launch interactive command prompt.
* Run `docker run -it --rm nano/node.js node -e 'console.log("Hello, World!")'`
* Add `FROM nano/node.js` to your Dockerfile.

Limitations
-----------

npm cannot build native modules (written in C) – only JavaScript extensions can be installed in the container. If you
want to build native extensions add them to the image using Buildroot instead.

  [Build]: http://travis-ci.org/Docker-nano/Node.js
  [Build image]: http://img.shields.io/travis/Docker-nano/Node.js.svg "Build status"
