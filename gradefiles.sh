#!/bin/bash

file1=$1
file2=$2
id1=$3

if [ ! -e $file1 ] || [ ! -e $file2 ]
then
echo files do not exist
fi

check="false"

fn=""
ln=""

while read fname lname id2
do
if [ $id2 -eq $id1 ]
then
check=true
fn=$fname
ln=$lname
fi
done<lab3_2afile.txt

if [ "$check" == "false" ]
then
echo No such ID
fi

while read id3 coursename grade
do
if [[ $id1 -eq $id3 ]] && [[ -z $grade ]]
then
echo $fn $ln has no grade in course $coursename
elif [[ $id1 -eq $id3 ]]
then
echo $fn $ln has a grade of $grade in course $coursename
fi
done<lab3_2bfile.txt


