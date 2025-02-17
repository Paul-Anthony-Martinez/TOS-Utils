# TOS-Utils
Shell scripts for TempleOS.

# Environment used
1. Linux Mint 21.2 (Victoria)
2. QEMU 6.2.0
3. TempleOS V5.03 Lite

# Create a virtual image to install TempleOS
Create a qcow image:  
```qemu-img create -f qcow2 {{ image_name.img }} {{ size_of_disk }}```  
The size of the disk must be specified by its unit:  
  K - Kilobytes  
  M - Megabytes  
  G - Gigabytes  
  T - Terabytes  
  P - Petabytes  
  E - Exabytes  

Example:  
```qemu-img create -f qcow2 {{ toshd.img }} 4G```  

# How to mount a QEMU virtual drive into Linux
QEMU images can be mounted in your filesystem just like regular directories.

Use the `mount` command with the path to the drive and the mount point as its arguments.  

```# You must be sudo to mount and unmount.```  
```mount -o loop,offset=32256 $drivePath $mountPoint```

If successfull, go to the directory where you mounted the image:  
Example:  
```cd /mnt/templeos/```

Check `mountTOS.sh` for an example.
