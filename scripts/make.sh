#!/bin/bash

if [[ $# -eq 1 ]] ; then
	PROJECT=$1
else
	echo "Please add the project name as options"
	echo "es... : ./make.sh xproject"
fi

mkdir ../$PROJECT
cp -p templates/* ../$PROJECT/
