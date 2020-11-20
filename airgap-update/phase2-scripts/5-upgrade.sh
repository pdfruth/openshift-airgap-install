#!/bin/bash

export PATH=.:$PATH

. ./env

SIGNATURE=$(cat ${REMOVABLE_MEDIA_PATH}/mirror/config/signature-sha256*.yaml | grep name: | awk '{print $2}' | sed s/-/:/)
echo $SIGNATURE

#./oc patch clusterversion version --type="merge" -p '{"spec":{"channel":"stable-4.4"}}'

./oc adm upgrade --allow-explicit-upgrade --to-image ${LOCAL_REGISTRY}/${LOCAL_REPOSITORY}@${SIGNATURE}
