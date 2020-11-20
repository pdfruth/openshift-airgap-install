#!/bin/bash

export PATH=.:$PATH

. ./env

rm -rf ignitions
mkdir ignitions
cp install-config.yaml ignitions

# create kubernetes manifests
./openshift-install create manifests --dir=./ignitions

# ensure masters are not schedulable
sed -i 's/mastersSchedulable: true/mastersSchedulable: false/g' ./ignitions/manifests/cluster-scheduler-02-config.yml

# create ignition config files
./openshift-install create ignition-configs --dir=./ignitions

echo "New ignition files have created in ./ignitions"
