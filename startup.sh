#!/bin/bash
META_DEV=/dev/sda
DATA_DEV=/dev/sdb
DATA_DEV_SIZE=`blockdev --getsz $DATA_DEV`
TARGET_SIZE=`expr $DATA_DEV_SIZE \* 15 / 10`
echo "Target size: $TARGET_SIZE"
dd if=/dev/zero of=$META_DEV bs=4096 count=1
echo "0 $TARGET_SIZE dedup $META_DEV $DATA_DEV 4096 md5 cowbtree 100 0" |\
		dmsetup create mydedup
