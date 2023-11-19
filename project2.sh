#!/bin/bash
# Thu Oct 12 23:19:36 IST 2023

#Variables
base=/home/vikas121/Documents/python
depth=1
run=0

# Checking if the directory exists or not

if [ ! -d $base ]
then
	echo " Directary not found: $base"
	exit 1
fi

# Checking if the archive folder exists or not 

if [ ! -d $base/archive.sh ]
then 
	mkdir $base/archive.sh
fi

# Finding all the files which are older than 10 days and having size greater than 20kb
for i in `find $base -maxdepth $depth -type f -size +20k && f -mtime +10 -print`
do
	if [ $run -eq 0 ]
	then
		gzip $i || exit 1
		mv $i.gz $base/archive.sh || exit 1
	fi
done


































































































 

