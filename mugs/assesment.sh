#!/bin/bash

### 1-CREATE SCENARIO ###

NMUGS=100
COUNTER=1
TMP=/tmp/mug.list
TMPO=/tmp/mug.old.list
TMPT=/tmp/mug.tmp

let NMUGS=NMUGS+1

while [ $COUNTER -lt $NMUGS ]; do
	echo  Hi, I am the mug number $COUNTER and I am around the circle! 
        echo ${COUNTER} >> $TMP
	let COUNTER=COUNTER+1 
done

COUNTER=$(cat $TMP |wc -l)

cat $TMP > $TMPT
cat $TMP > $TMPO
echo ""

### 2-START THE REMOVING MUGS IN A CIRCLE ###

while [ $COUNTER -gt 1 ]; do
	LASTM=$(tail -1 $TMP) && LASTOM=$(tail -1 $TMPO)

if [ $LASTM == $LASTOM ] ; then
	sed -e 'n; d' $TMP > $TMPT
	cat $TMP > $TMPO
	for i in $(cat $TMPT) ; do echo "The mug $i has been taken" ; done
	sed -i '1d; n; d' $TMP
	else
	sed -e '1d; n; d' $TMP > $TMPT
	cat $TMP > $TMPO
	for i in $(cat $TMPT) ; do echo "The mug $i has been taken" ; done
	sed -i 'n; d' $TMP
fi
	COUNTER=$(cat $TMP |wc -l)
done

### 3-PRINTOUT THE RESULT AND TEMP FILES CLEANING

echo "The last remaining mug is number $(cat $TMP) and it is alone"
rm -rf $TMP && rm -rf $TMPO && rm -rf $TMPT
