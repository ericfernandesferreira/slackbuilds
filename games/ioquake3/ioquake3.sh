#!/bin/bash

cd /home/backup/games/quake3
./ioquake3_opengl2.x86_64 "$@"
exit $?
