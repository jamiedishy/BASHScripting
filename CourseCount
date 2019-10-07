#!/bin/bash
#problem1

read input
ID1=$input

while read ID2 name1
do
	if [ $ID1 -eq $ID2 ]
	then
		name2=$name1
	#	echo great. now name2 is $name2
	fi
done<NameID.txt

count=0;

while read course name3
do
#	echo $name2
#	echo this is $name3
	if [ "$name2" == "$name3" ]
	then
		count=$(($count+1))
	fi
done<NameCourse.txt

echo your count is $count




