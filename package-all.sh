#!/bin/bash

pushd extension
./package.sh
popd

pushd module
./package.sh
popd
