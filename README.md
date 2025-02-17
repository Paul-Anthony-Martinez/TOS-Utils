# TOS-Utils
Shell scripts for TempleOS.

# Environment used
1. Linux Mint 21.2 (Victoria)
2. QEMU 6.2.0
3. TempleOS V5.03 Lite

# How to mount a QEMU virtual drive into Linux
QEMU images can be mounted in your filesystem so you
can access them just like regular directories.

Use the `mount` command with the path to the drive and the mount point as its arguments.  
```mount -o loop,offset=32256 $drivePath $mountPoint```
