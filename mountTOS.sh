#!/bin/sh
# Where the image is going to be mounted
mountPoint="/mnt/templeos"
# Where the image is located in your system
drivePath="/home/anthonyslx/src/rep/templeos/vm/toshd.img"

# Ensure the script is run as root
if [ ! $(id -u) -eq 0 ]; then 
  echo "You must be root."
  exit 1
fi

# Create the directory for mounting if it does not exists
if [ ! -e $mountPoint ]; then 
  mkdir $mountPoint
fi

mount -o loop,offset=32256 "$drivePath" "$mountPoint"
