#!/bin/bash
sudo docker run -p 9990:9990 -p 9999:9999 -p 8080:8080 -p 8787:8787 -it --rm rmarting/jboss-eap:6.4.0
