#!/bin/sh

# Where the disk image was previously created
hda=/home/anthonyslx/src/rep/templeos/vm/toshd.img
# Options to start up the virtual machine
options=" -rtc base=localtime -enable-kvm -display sdl,gl=on -vga virtio -machine pcspk-audiodev=snd0 -audiodev pa,id=snd0 -m 1024 -smp $(nproc) -cdrom ./TempleOS.ISO"

qemu-system-x86_64 $options $hda
