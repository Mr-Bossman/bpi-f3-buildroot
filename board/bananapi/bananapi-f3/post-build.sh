#!/bin/sh
BOARD_DIR="$(dirname "$0")"
BLOBS=$BOARD_DIR/blobs

# Truncate to 512 bytes removing the appended FSBL.bin
dd if=$BLOBS/u-boot-bpi-f3-512b.img of=$BLOBS/u-boot-bpi-f3-512b-truncated.img bs=512 count=1

# Truncate to modern 218 byte MBR bootsrap code area size
dd if=$BLOBS/u-boot-bpi-f3-header-sd-0k.img of=$BLOBS/u-boot-bpi-f3-header-sd-0k-218b.img bs=218 count=1

cp $BLOBS/u-boot-bpi-f3-512b-truncated.img $BINARIES_DIR/
cp $BLOBS/u-boot-bpi-f3-header-sd-0k-218b.img $BINARIES_DIR/
cp $BUILD_DIR/opensbi-afc26173a776a9b4b4a7730dc17f9c0841f95cba/build/platform/generic/firmware/fw_dynamic.itb $BINARIES_DIR/
