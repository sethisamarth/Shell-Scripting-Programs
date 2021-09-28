#! /bin/bash -x

read -p "Enter the value of n :" n
i=o
for ((  i=0; i<=n;i++  ))
do
     echo  $((2**i))
done
