#!/bin/bash

#docker
wget -qO- https://get.docker.com/ | sh

#create a main directory
mkdir ~/HOSTTools
cd ~/HOSTTools

#create honeypot directory
#mkdir Honeypots
#cd Honeypots

#create database for filtered logs
#cp ~/FYP-Scripts/honeypotlogsdb.py .
#python honeypotlogsdb.py
#rm honeypotlogsdb.py

#Install MySQL-python
#pip install MySQL-python

# cowrie docker file
#docker pull ouspg/cowrie

# kippo docker file
#docker pull tomdesinto/kippo

#Install Requests
pip install requests

# Install splunk forwarder
dpkg -i splunkuf
rm -rf splunkuf
/opt/splunkforwarder/bin/splunk enable boot-start --accept-license
/opt/splunkforwarder/bin/splunk start --accept-license