#!/bin/bash
# find the median value from an input of three itegers if they're in ascending order

read one two three

if [ $two -gt $one ] && [ $three -gt $two ]
then
	echo $two
else
while [ $one -gt $two -o $two -gt $three -o $one -gt $three ]
do
	echo NO
	read one two three
	if [ $two -gt $one ] && [ $three -gt $two ]
	then
		echo $two
		break
	fi
done
fi


