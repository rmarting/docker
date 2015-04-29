#
# Base image to all jboss containers
#
FROM rmarting/application-base
MAINTAINER Jose Roman Martin Gil <roman.martin@redhat.com>

# JBoss Configuration (folder, group, user, permissions)
RUN mkdir /opt/jboss && \
	groupadd -r jboss -g 1000 && \
	useradd -u 1000 -r -g jboss -d /opt/jboss -s /sbin/nologin \
		-c "JBoss user in Docker" jboss && \
	chown -R jboss:jboss /opt/jboss

USER jboss
WORKDIR /opt/jboss

# Environment Variables
# ENV JAVA_HOME /usr/lib/jvm/java
ENV HOME /opt/jboss

# Commands
# CMD ["/bin/bash","-l"]
