#! /bin/bash

qemu-system-i386 -machine pc  -hda pangea.disk -m 128 -L /usr/share/qemu/  -boot c -netdev user,id=n0,dns=10.0.2.7,hostfwd=tcp:127.0.0.1:23-10.0.2.33:23,hostfwd=tcp:127.0.0.1:10080-10.10.2.33:80, -device ne2k_pci,netdev=n0 -vnc 127.0.0.1:0
