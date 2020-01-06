#!/bin/bash


# Generic python verions
while read v; do
  PYTHON_VERSION=$v
  make docker
  make publish
done <VERSIONS

# Python apps based off those versions
make -C python_apps all
