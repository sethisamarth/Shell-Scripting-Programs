#! /bin/bash -x
totalwon=0;
totalbet=0;
money=100;
loss=0
won=1
bit_amount=1

while ((  $money != 0 &&  $money != 200  ))
do

betting=$((RANDOM%2))

if [ $betting -eq $loss ]
then
     money -= 1
else
     money  += 1
         ((totalwon++))
fi

done
         ((totalbet++))

