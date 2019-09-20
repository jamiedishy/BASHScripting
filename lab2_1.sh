#!/bin/bash
#lab2_1.sh

echo "enter 2 dates in the format month1 year1 month2 year2"

read m1 y1 m2 y2

if [ $m1 -lt 0 ] || [ $y1 -lt 0 ] || [ $m2 -lt 0 ] || [ $y2 -lt 0 ]
then
	echo -e "No negative numbers please\n"
elif [ $m1 -gt 12 ] || [ $m1 -eq 0 ] || [ $m2 -gt 12 ] || [ $m2 -eq 0 ]
then
	echo -e "Wrong month format\n"
elif [ $(($m2-$m1)) -lt 0 ] && [ $(($y2-$y1)) -lt 0 ] 
then
	echo -e "date1 is bigger than date2\n"
elif [ $(($y2-$y1)) -lt 0 ]
then
	echo -e "date1 is bigger than date2\n"
elif [ $(($m2-$m1)) -lt 0 ]
then
	DATE1=$((12-$m1+$m2))
	DATE2=$(($y2-$y1-1))
	echo -e "$DATE2 years $DATE1 months\n"
else

echo -e "Your input $m1 $y1 $m2 $y2\n"

DATE1=$(($m2-$m1))
DATE2=$(($y2-$y1))

echo -e "$DATE2 years $DATE1 months\n"

fi


