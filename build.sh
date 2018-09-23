#!/bin/bash

MKSQUASHFS="mksquashfs"
BUILD="build"
PNDNAME="pandora.xu4.thred"

if [ ! -d $BUILD ]; then
    mkdir $BUILD
fi

cp -r src/* $BUILD

if [ ! -f src/u4/bin/u4 ]; then
    echo "src/u4/bin/u4 binary is missing!"
    exit -1
fi

if [ ! -f src/u4/bin/u4upgrad.zip ]; then
    echo "Downloading u4upgrad.zip from http://www.moongates.com/u4/upgrade ..."
    wget -O src/u4/bin/u4upgrad.zip http://www.moongates.com/u4/upgrade/files/u4upgrad.zip
fi

rm $PNDNAME.iso
rm $PNDNAME.pnd

$MKSQUASHFS $BUILD $PNDNAME.iso -all-root -force-gid 0 -comp xz -Xbcj arm,armthumb

cat $PNDNAME.iso $BUILD/PXML.xml $BUILD/icon.png > $PNDNAME.pnd
