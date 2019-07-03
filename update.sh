#!/bin/bash

. ./config
### This is where the magic happens :D ###

DEBIAN_RELEASES=$(sed -e "s/ /\n/g" <<< $DEBIAN_RELEASES)

for release in $DEBIAN_RELEASES ;do

mkdir -p $release
sed -e "s|<debian-release>|debian:$release|g" \
    -e "s|<pandoc-release>|$PANDOC_VERSION|g" \
    Dockerfile.template \
    > $release/Dockerfile

done