#!/bin/bash

. ./config
### This is where the magic happens :D ###

DEBIAN_RELEASES=$(sed -e "s/ /\n/g" <<< $DEBIAN_RELEASES)

for release in $DEBIAN_RELEASES ;do
    docker pull debian:$release
    docker build --tag=saremox/oebits-build:$release ./$release/
done