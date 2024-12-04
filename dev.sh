#!/bin/bash

make -C buildroot/ aesd-char-driver-rebuild
make -C buildroot/ aesd-assignments-rebuild

if [ $? -eq 0 ]; then
./build.sh
fi

if [ $? -eq 0 ]; then
./runqemu.sh
fi
