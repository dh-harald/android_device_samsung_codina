#!/bin/sh

VENDOR=samsung
DEVICE=codina
INDIR=/home/misi/minooch/system
OUTDIR=../../../vendor/$VENDOR/$DEVICE/proprietary

COUNT=`cat proprietary-files.txt | grep -v ^# | grep -v ^$ | wc -l | awk {'print $1'}`
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
#    COUNT=`expr $COUNT - 1`
    mkdir -p `dirname $OUTDIR/$FILE` 2>/dev/null
    cp $INDIR/$FILE $OUTDIR/$FILE
done


