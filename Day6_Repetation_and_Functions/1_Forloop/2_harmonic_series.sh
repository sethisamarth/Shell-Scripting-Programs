#!/bin/bash
read -p "enter the value of n"
result=0
echo 'The Harmonic series is:'
for (( i = 1; i <= n; i++ ))
do
    flag=$( echo "  $1 $i " | awk '{ print $1/$2 }' )
    result=$( echo "  $result $flag " | awk '{ print $1/$2 }' )

done
echo "$result"


