#! /bin/bash

qemu-system-i386 -hda win95.img  -boot d -cpu pentium -m 64 -vga cirrus -netdev user,id=n0,dns=10.0.2.7 -device ne2k_isa,irq=11,iobase=0x300,netdev=n0 -localtime -vnc 127.0.0.1:1
