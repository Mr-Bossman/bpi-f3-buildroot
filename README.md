# Banana Pi BPI-F3 Buildroot

How to build:

```bash
git clone https://github.com/Mr-Bossman/bpi-f3-buildroot

cd bpi-f3-buildroot

git submodule update --init

cd buildroot

make BR2_EXTERNAL=$PWD/../ bananapi_f3_defconfig

make

sudo dd status=progress oflag=sync bs=4k if=output/images/sdcard.img of=/dev/sdX; sync
```
