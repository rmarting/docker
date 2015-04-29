#
# Base image to all application containers
#
FROM rmarting/fedora:20
MAINTAINER Jose Roman Martin Gil <roman.martin@redhat.com>

# Install minimun software
RUN yum -y install bsdtar unzip augeas java-1.7.0-openjdk-devel && \
	yum clean all

# Command to test Java version
CMD ["java","-version"]
