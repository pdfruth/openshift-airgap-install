#!/bin/bash

export PATH=.:$PATH

. ./env

wget https://mirror.openshift.com/pub/openshift-v4/${ARCHITECTURE}/clients/ocp/${OCP_RELEASE}/openshift-client-linux-${OCP_RELEASE}.tar.gz
wget https://mirror.openshift.com/pub/openshift-v4/${ARCHITECTURE}/clients/ocp/${OCP_RELEASE}/openshift-install-linux-${OCP_RELEASE}.tar.gz

tar -xvzf openshift-client-linux-${OCP_RELEASE}.tar.gz
tar -xvzf openshift-install-linux-${OCP_RELEASE}.tar.gz
