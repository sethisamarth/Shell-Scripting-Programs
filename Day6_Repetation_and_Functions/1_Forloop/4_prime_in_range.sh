#!/bin/bash
read -p "enter lower bound: " lower
read -p "enter upper bound: " upper

for (( number = lower; number <= upper; number++ ))
do
    flag=1
    for ((f = 2; f < number; f++))
    do
        if (( number % f == 0))
        then
        flag=0
        break
        fi
    done
    if((flag==1))
    then
        echo "$number is prime"
    else
        echo "$number is not prime"
    fi
done
