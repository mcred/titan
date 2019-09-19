#!/usr/bin/env bash

os=$1

#Setup Linux
if [ $os = "ubuntu-18.04" ]; then
  ${PWD}/scripts/build-linux.sh
fi

#Setup OSX
if [ $os = "macOS-10.14" ]; then
  ${PWD}/scripts/build-osx.sh
fi
