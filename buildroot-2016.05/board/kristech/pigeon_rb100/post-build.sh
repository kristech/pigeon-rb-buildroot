#!/bin/sh

set -u
set -e

#set noatime options for RFS
grep -qE '::sysinit:/bin/mount -o remount,noatime /' ${TARGET_DIR}/etc/inittab || \
sed -i '/mount -o remount,rw/a\
::sysinit:/bin/mount -o remount,noatime /' ${TARGET_DIR}/etc/inittab