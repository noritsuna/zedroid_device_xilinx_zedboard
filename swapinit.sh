#!/system/bin/sh
# swapon to mmcblk0p4
count=10
until [ $count -eq 0 ];
do
  if [ -b /dev/block/mmcblk0p4 ] ; then
    swapon /dev/block/mmcblk0p4
    echo 30 > /proc/sys/vm/swappiness
    sysctl -w vm.swappiness=30
    break
  fi
  sleep 3
  count=`expr $count - 1`
done

