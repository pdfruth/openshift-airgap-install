#!/bin/bash

export PATH=.:$PATH

. ./env

oc apply -f ${REMOVABLE_MEDIA_PATH}/mirror/config/signature*.yaml

