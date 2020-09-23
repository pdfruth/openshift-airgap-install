#!/bin/bash

export PATH=.:$PATH

. ./env

echo "Updating symlinks from absolute to relative"
cd $REMOVABLE_MEDIA_PATH/mirror/v2/openshift/release/manifests

find . -type l | while read l; do
    target="$(realpath "$l")"
    ln -fs "$(realpath --relative-to="$(dirname "$(realpath -s "$l")")" "$target")" "$l"
done
