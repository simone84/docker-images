#!/bin/bash

### 1-CREATE SCENARIO ###

COUNTER=1
TMP=/tmp/mug.list
TMPO=/tmp/mug.old.list
TMPT=/tmp/mug.tmp

while [ $COUNTER -lt 101 ]; do
	echo  Hi, I am the mug number $COUNTER and I am around the circle! 
        echo ${COUNTER} >> $TMP
	let COUNTER=COUNTER+1 
done

COUNTER=$(cat $TMP |wc -l)

cat $TMP > $TMPT
echo ""

### 2-FIRST REMOVING MUGS SEQUENCE ###

sed -e 'n; d' $TMP > $TMPT
sed -e '1d; n; d' $TMP > $TMPO
for i in $(cat $TMPT) ; do echo "The mug $i has been taken" ; done
sed -i '1d; n; d' $TMP

### 3-START THE REMOVING MUGS IN A CIRCLE ###

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

echo "The last remaining mug is number $(cat $TMP) and it is alone"
rm -rf /tmp/mug.*
