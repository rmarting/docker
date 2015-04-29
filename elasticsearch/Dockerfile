#
# Image for a ElasticSearch Container
#
FROM rmarting/application-base
MAINTAINER Jose Roman Martin Gil <roman.martin@redhat.com>

# Commands to install as a Software

RUN \
  cd /tmp && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.5.1.tar.gz && \
  tar xvzf elasticsearch-1.5.1.tar.gz && \
  rm -f elasticsearch-1.5.1.tar.gz && \
  mv /tmp/elasticsearch-1.5.1 /elasticsearch

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["/elasticsearch/bin/elasticsearch"]

#
# Commands to install as a Service
#

# Import GPG-KEY from ElasticSearch
# RUN rpm --import http://packages.elasticsearch.org/GPG-KEY-elasticsearch

# Adding ElasticSearch Repositori
# ADD files/elasticsearch.repo /etc/yum.repos.d/

# Install minimun software
# RUN yum -y install elasticsearch \
# 	&& yum clean all

#
# End Commands to install as a Service
#

# Exposing ElasticSearch Ports
EXPOSE 9200 9300
