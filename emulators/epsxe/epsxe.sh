#!/usr/bin/env bash


LD_LIBRARY_PATH+=:/opt/epsxe LD_PRELOAD=/usr/lib64/libcurl.so.4 /opt/epsxe/epsxe "$@"
