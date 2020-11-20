#!/bin/bash

export PATH=.:$PATH

. ./env

echo "Making a tar ball"
tar -czf airgap-${OCP_RELEASE}-${ARCHITECTURE}.tgz \
       	openshift-client-linux-${OCP_RELEASE}.tar.gz \
       	openshift-install-linux-${OCP_RELEASE}.tar.gz \
	./dry-run.out \
       	./portable-media
