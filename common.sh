#!/bin/bash

# common.sh
#
# Authors: Kevin Jackson (kevin@linuxservices.co.uk)
#          Cody Bunch (bunchc@gmail.com)
#
# Sets up common bits used in each build script.
#

export DEBIAN_FRONTEND=noninteractive
export CONTROLLER_HOST=10.10.10.200
export KEYSTONE_ENDPOINT=${CONTROLLER_HOST}
export SERVICE_TENANT_NAME=service
export SERVICE_PASS=openstack
export ENDPOINT=${KEYSTONE_ENDPOINT}
export SERVICE_TOKEN=ADMIN
export SERVICE_ENDPOINT=http://${ENDPOINT}:35357/v2.0
export PROXY=10.10.10.110
# Setup Proxy
#echo 'Acquire::http { Proxy "http://10.10.10.110:3142"; };' | sudo tee /etc/apt/apt.conf.d/01apt-cacher-ng-proxy

sudo apt-get update
sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:ubuntu-cloud-archive/grizzly-staging
sudo apt-get update
#; sudo apt-get upgrade -y; apt-get dist-upgrade -y
