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

copy_exec /sbin/cryptsetup /bin # copy_exec copies libs too.

exit 0
