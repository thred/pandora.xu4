#!/bin/bash

MKSQUASHFS="mksquashfs"
BUILD="build"
PNDNAME="pandora.xu4.thred"

if [ ! -d $BUILD ]; then
    mkdir $BUILD
fi

cp -r src/* $BUILD

if [[ $* == *-d* ]]
then
    rm -rf $BUILD/u4
    scp -r thred@192.168.0.30:/media/SDCARD/UsrLocal $BUILD/u4
fi

if [ ! -f $BUILD/u4/bin/u4 ]; then
    echo "$BUILD/u4/bin/u4 binary is missing!"
    exit -1
fi

if [ ! -f $BUILD/u4upgrad.zip ]; then
    echo "Downloading u4upgrad.zip from http://www.moongates.com/u4/upgrade ..."
    wget -O $BUILD/u4upgrad.zip http://www.moongates.com/u4/upgrade/files/u4upgrad.zip
fi

rm $PNDNAME.iso
rm $PNDNAME.pnd

$MKSQUASHFS $BUILD $PNDNAME.iso -all-root -force-gid 0 -comp xz -Xbcj arm,armthumb

cat $PNDNAME.iso $BUILD/PXML.xml $BUILD/icon.png > $PNDNAME.pnd

if [[ $* == *-u* ]]
then
    scp pandora.xu4.thred.pnd thred@192.168.0.30:/media/PANDORA/pandora/menu
fi