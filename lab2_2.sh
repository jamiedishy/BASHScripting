#!/bin/bash
#lab2_2.sh

arr=($(quota -v))

first=${arr[1]}

third=${arr[3]}

echo "You used $first of $third MB"


