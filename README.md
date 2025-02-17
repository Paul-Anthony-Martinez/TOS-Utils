# TOS-Utils
Shell scripts for TempleOS.

# Environment used
1. Linux Mint 21.2 (Victoria)
2. QEMU 6.2.0
3. TempleOS V5.03 Lite

# Create a virtual image to install TempleOS
Create a qcow image:  

```qemu-img create -f qcow2 "$IMAGE_NAME" "$IMAGE_SIZE" ```  

The size of the disk must be specified by its unit:  

K - Kilobytes. Example: `2048K`  
M - Megabytes. Example: `4096M`  
G - Gigabytes. Example: `8G`  
T - Terabytes. Example: `100T`  
P - Petabytes. Example: `20P`  
E - Exabytes. Example: `40E`  

Example:
```sh 
qemu-img create -f qcow2 toshd.img 4G
```  

# Start your TempleOS VM
Use the `qemu-system-x86_64` command:

```sh
qemu-system-x86_64 $options $hda
```

`$options` are the options to set to your virtual machine.  
 
```sh
options="-rtc base=localtime -enable-kvm -display sdl,gl=on-vga virtio -machine pcspk-audiodev=snd0 -audiodev pa,id=snd0 -m 1024 -smp $(nproc) -cdrom /path/to/TempleOS.ISO"
```

`$hda` is the path where the qemu drive previously created is located.  

Example:  
```sh
hda=/home/anthonyslx/src/rep/templeos/vm/toshd.img
```

Check `startTOS.sh` for an example script.

# How to mount a QEMU virtual drive into Linux
QEMU images can be mounted in your filesystem just like regular directories.

Use the `mount` command with the path to the drive and the mount point as its arguments.  

```# You must be sudo to mount and unmount.```  
```sh
mount -o loop,offset=32256 $drivePath $mountPoint
```

If successfull, go to the directory where you mounted the image:  
Example:  
```cd /mnt/templeos/```

Check `mountTOS.sh` for an example script.
