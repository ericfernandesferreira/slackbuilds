#!/bin/bash

cd /home/backup/games/quake3
./ioquake3.x86_64 "$@"
exit $?
