#
# Base image to all application containers
#
FROM rmarting/jboss-base
MAINTAINER Jose Roman Martin Gil <roman.martin@redhat.com>

ADD files/jboss-eap-6.4.0.zip /tmp/

RUN unzip /tmp/jboss-eap-6.4.0.zip -d /opt/jboss

# EAP_HOME environment variable
ENV EAP_HOME /opt/jboss/jboss-eap-6.4

# Add default admin user
RUN ${EAP_HOME}/bin/add-user.sh admin RedHat-1 --silent

# Enable binding to all network interfaces and debugging inside the EAP
RUN echo "JAVA_OPTS=\"\$JAVA_OPTS -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0\"" >> ${EAP_HOME}/bin/standalone.conf

# Add volume if you want to externalize logs
VOLUME ${EAP_HOME}/standalone/logs

EXPOSE 9990 9999 8080 8787

ENTRYPOINT ["/opt/jboss/jboss-eap-6.4/bin/standalone.sh"]

CMD []
