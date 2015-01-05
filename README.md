Docker Build Tools
==================

Simple yet useful Docker image based on `debian:jessie`, providing a set of
build tools:

* [Composer](https://getcomposer.org/) (using [HHVM](https://getcomposer.org/))
* [Bundler](http://bundler.io/)
* [NPM](https://www.npmjs.com/)
* [Bower](http://bower.io/)
* [Grunt](http://gruntjs.com/) (`grunt-cli` only)
* [Fabric](http://www.fabfile.org/)
* [Fig](http://www.fig.sh/)


Usage
-----

    $ docker run --rm -v $(pwd):/srv willdurand/buildtools composer --version
    Composer version 1.0-dev

    $ docker run --rm -v $(pwd):/srv willdurand/buildtools bundle --version
    Bundler version 1.7.4

    $ docker run --rm -v $(pwd):/srv willdurand/buildtools npm --version
    1.4.28

    $ docker run --rm -v $(pwd):/srv willdurand/buildtools bower --version
    1.3.12

    $ docker run --rm -v $(pwd):/srv willdurand/buildtools grunt --version
    grunt-cli v0.1.13

    $ docker run --rm -v $(pwd):/srv willdurand/buildtools fab --version
    Fabric 1.10.0
    Paramiko 1.15.1
