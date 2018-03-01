#!/bin/bash

set -e

make distclean

CC="gcc -m32" 
./configure \
    --disable-splash \
    --with-targetname=qvfb \
    --disable-screensaver \
    --disable-dummyial \
    --disable-videodummy \
    --disable-cursor \
    --disable-pcxvfb \
    --disable-videofbcon \
    --enable-videoqvfb \
    --enable-debug \
    --enable-qvfbial

make -j4

sudo make install
