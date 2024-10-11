#!/bin/bash

cd /home/backup/games/quake3
./vkquake3_vulkan.x86_64 "$@"
exit $?
