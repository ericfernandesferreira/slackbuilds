#!/bin/bash

cd /home/backup/games/quake
./ezquake-linux-x86_64 +cfg_use_home 1 +cfg_load "$@"
exit $?
