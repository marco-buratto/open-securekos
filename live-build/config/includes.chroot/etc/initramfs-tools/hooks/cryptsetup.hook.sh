#!/bin/sh

PREREQ=""
prereqs()
{
     echo "$PREREQ"
}

case $1 in
prereqs)
     prereqs
     exit 0
     ;;
esac

. /usr/share/initramfs-tools/hook-functions

copy_exec /sbin/cryptsetup
copy_exec /sbin/dmsetup
copy_exec /lib/cryptsetup/askpass

