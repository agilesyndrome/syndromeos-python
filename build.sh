#!/bin/bash


# Generic python verions
while read v; do
  make PYTHON_VERSION=$v docker
  make PYTHON_VERSION=$v publish
done <VERSIONS

# Python apps based off those versions
make -C python_apps all
