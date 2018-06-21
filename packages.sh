#!/bin/sh

set -e

sudo apt-get update

./packages.rm.sh
./packages.minimal.sh


