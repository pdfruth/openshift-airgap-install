#!/bin/bash

export PATH=.:$PATH

. ./env

rm -rf airgap-*.tgz \
       dry-run.out \
       kubectl \
       oc \
       openshift-* \
       README.md \
       portable-media
