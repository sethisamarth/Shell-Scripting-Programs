#!/bin/bash
read -p "enter first number:" a
read -p "enter second number:" b
read -p "enter third number:" c

p=$(( a + b * c ))
q=$(( c + a / b ))
r=$(( a % b + c ))
s=$(( a * b + c ))
echo "The results of the arithmetic operations are $p $q $r $s"

minimum=$p
maximum=$s

if (( p > maximum ))
then
    maximum=$p
fi

if (( q > maximum ))
then
    maximum=$q
fi
if (( q < minimum ))
then
    minimum=$q
fi

if (( r > maximum ))
then
    maximum=$r
fi
if (( r < minimum ))
then
    minimum=$r
fi

if (( s > minimum ))
then
    minimum=$s
fi

echo "the minimum value is $minimum and the maximum value is $maximum"




