#!/bin/bash
if [ ! -e files/jboss-eap-6.4.0.zip ]
then
	echo "You should get required EAP binary before trying to build this image."
	echo "Binary is available at: https://access.redhat.com/jbossnetwork/restricted/softwareDownload.html?softwareId=37393"
	exit 255
fi
sudo docker build --rm -t "rmarting/jboss-eap:6.4.0" .
