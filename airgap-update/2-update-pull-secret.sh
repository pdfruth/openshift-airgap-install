#!/bin/bash

export PATH=.:$PATH

. ./env

if [[ ! -f ./${LOCAL_SECRET_JSON} ]]
then
  echo "Existing pull secret file missing.  Please copy your Redhat supplied pull secret in the current working directory"
  exit 1
fi

oc registry login --to ./${LOCAL_SECRET_JSON} --registry "${LOCAL_REGISTRY}" --auth-basic=${LOCAL_REGISTRY_USER}:${LOCAL_REGISTRY_PASSWORD}

