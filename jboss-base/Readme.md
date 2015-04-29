# Docker base images for application development
This images is based on [rmarting/fedora-base][../fedora-base] 

This images will have latest openjdk 7 plus some other utilities for every java based image.

This images contains:
* openjdk7
* unzip
* bsdtar
* augeas
* jboss user
* using __jboss__ user
* __HOME__ env variable pointing to jboss home
* WORKDIR __/home/jboss__

Adds and environment variable for JAVA_HOME
