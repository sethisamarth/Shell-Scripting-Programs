#!  /bin/bash -x

i=0;
totalhead=0;
totaltail=0;
while ((   $totalhead < 11 &&   $totaltail < 11 ))
do
FLIP=$(($RANDOM%2))
if [ $FLIP -eq 1  ]
then
    echo "heads"
     ((totalhead++))
else
    echo "tails"
     ((totaltail++))
fi

     ((i++))
done
      echo totalhead:$totalhead
      echo totaltail:$totaltail

