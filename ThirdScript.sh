#!/bin/bash

echo "LISTING PARTITIONS ON PRESENT DISKS"
sudo parted -l
echo "PRESS ENTER"
read
echo "CREATING A FILE SYSTEM IN YOUR DIRECTORY"
touch sdf3
sudo mkfs -t ext4 ~/sdf3 1000
echo "PRESS ENTER"
read
echo "LISTING BLOCK ID OF ALL MOUNTED FILESYSTEMS"
sudo blkid
echo "PRESS ENTER"
read
echo "VIEWING UTILIZATION OF YOUR CURRENTLY MOUNTED FILESYSTEMS"
sudo df
echo "PRESS ENTER"
read
echo "DISK USAGE OF FILES AND DIRECTORIES IN YOUR ROOT"
sudo du -s /* | sort -n | more
echo "PRESS ENTER"
read
echo "BYE..."

