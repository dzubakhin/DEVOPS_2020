#!/bin/bash
PATH1=$HOME
mkdir $PATH1/tmp
while :
do	
	date > $PATH1/tmp/output.txt
	ps -A --no-headers | wc -l >> $PATH1/tmp/output.txt
	sleep 60
done