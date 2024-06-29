#!/bin/sh
BOARD_DIR="$(dirname "$0")"
BLOBS=$BOARD_DIR/blobs

cp $BOARD_DIR/env_k1-x.txt $BINARIES_DIR/
cp $BLOBS/u-boot-bpi-f3-512b.img $BINARIES_DIR/
cp $BLOBS/u-boot-bpi-f3-header-sd-0k.img $BINARIES_DIR/

cp $BUILD_DIR/opensbi-afc26173a776a9b4b4a7730dc17f9c0841f95cba/build/platform/generic/firmware/fw_dynamic.itb $BINARIES_DIR/
