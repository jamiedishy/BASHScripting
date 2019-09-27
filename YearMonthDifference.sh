#!/bin/bash

read m1 y1 m2 y2

dm=$(($m2-$m1))
dy=$(($y2-$y1))

if [ $m1 -lt 0 ] || [ $m2 -lt 0 ] || [ $y1 -lt 0 ] || [ $y2 -lt 0 ]
then
	echo No negative numbers please
elif [ $m2 -gt 12 ] || [ $m2 -lt 0 ] || [ $m1 -gt 12 ] || [ $m1 -lt 0 ]
then
	echo Wrong month format
elif [ $m1 -gt $m2 ] && [ $y1 -gt $y2 ]
then
	echo date1 is bigger than date2
elif [ $m1 -gt $m2 ] && [ $y1 -lt $y2 ]
then
	diffm=$((12-$m1+$m2))
	echo $dy year $diffm months
else
	echo $dy year $dm months
fi

