#
# Base image to all containers
#
FROM fedora:20
MAINTAINER Jose Roman Martin Gil <roman.martin@redhat.com>

# Update the system
RUN yum -y update && \
	yum clean all

# Install Common Software
RUN yum -y install wget && \
	yum clean all
