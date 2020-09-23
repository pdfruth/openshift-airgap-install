#!/bin/bash

export PATH=.:$PATH

. ./env

tar -xvzf airgap-${OCP_RELEASE}-${ARCHITECTURE}.tgz

tar -xvzf openshift-client-linux-${OCP_RELEASE}.tar.gz
tar -xvzf openshift-install-linux-${OCP_RELEASE}.tar.gz

