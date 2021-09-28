#! /bin/bash

n=10

for(( i=0; i<10 ;i++ ))

do

   array[i]=$((RANDOM%900+100))

done

echo "the 10 random 3 digit no. are: "

echo "${array[@]}"



IFS=$'\n' sorted=($(sort <<<"${array[*]}"))
unset IFS

printf "[%s]\n" "${sorted[@]}"

echo 2nd_smallest:"${sorted[1]}"
echo 2nd_largest:"${sorted[8]}"

