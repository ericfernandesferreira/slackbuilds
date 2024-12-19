#!/bin/bash

cd /home/backup/games/quake
./ezquake-linux-x86_64 +cfg_load "$@"
exit $?
