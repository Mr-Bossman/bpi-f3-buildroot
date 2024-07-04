#!/bin/sh
BOARD_DIR="$(dirname "$0")"
BLOBS=$BOARD_DIR/blobs

cp $BOARD_DIR/env_k1-x.txt $BINARIES_DIR/
cp $BLOBS/u-boot-bpi-f3-512b.img $BINARIES_DIR/
cp $BLOBS/u-boot-bpi-f3-header-sd-0k.img $BINARIES_DIR/

if [ -f $BINARIES_DIR/Image ]; then
	mkimage -n 'Kernel Image' -A riscv -O linux -C none -T kernel -a 0x01400000 -e 0x01400000 -d $BINARIES_DIR/Image $BINARIES_DIR/Image.itb
fi

if [ -f $BINARIES_DIR/k1-bananapi-f3.dtb ]; then
	cp $BINARIES_DIR/k1-bananapi-f3.dtb $BINARIES_DIR/k1-x_deb1.dtb
fi

cp $BUILD_DIR/opensbi-afc26173a776a9b4b4a7730dc17f9c0841f95cba/build/platform/generic/firmware/fw_dynamic.itb $BINARIES_DIR/
