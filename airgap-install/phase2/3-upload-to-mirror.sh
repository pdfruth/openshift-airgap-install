#!/bin/bash

export PATH=.:$PATH

. ./env

#wget https://mirror.openshift.com/pub/openshift-v4/${OCP_ARCH}/clients/ocp/${OCP_RELEASE}/openshift-client-linux-${OCP_RELEASE}.tar.gz
#wget https://mirror.openshift.com/pub/openshift-v4/${OCP_ARCH}/clients/ocp/${OCP_RELEASE}/openshift-install-linux-${OCP_RELEASE}.tar.gz

oc image mirror -a ${LOCAL_SECRET_JSON} \
	--from-dir=${REMOVABLE_MEDIA_PATH}/mirror "file://openshift/release:${OCP_RELEASE}*" \
       	${LOCAL_REGISTRY}/${LOCAL_REPOSITORY}

