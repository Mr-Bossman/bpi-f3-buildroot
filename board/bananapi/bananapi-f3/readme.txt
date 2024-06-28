Intro
=====

This default configuration will allow you to start experimenting with the
buildroot environment for the Bananapi F3. With the current
configuration it will bring-up the board, and allow access through the
serial console.

Bananapi F3 link:
https://wiki.banana-pi.org/Banana_Pi_BPI-F3

How to build
============

    $ make bananapi_f3_defconfig
    $ make

Note: you will need access to the internet to download the required
sources.

How to write the SD card
========================

Once the build process is finished you will have an image called "sdcard.img"
in the output/images/ directory.

Copy the bootable "sdcard.img" onto an SD card with "dd":

  $ sudo dd oflag=sync status=progress bs=1M if=output/images/sdcard.img of=/dev/sdX
  $ sudo sync

Insert the micro SDcard in your Bananapi BPI-F3 and power it up. The console
is on the serial line, 115200 8N1.
