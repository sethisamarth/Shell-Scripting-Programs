
#!   /bin/bash  -x


declare -A dictionary=(
                            [1]=0
                            [2]=0
                            [3]=0
                            [4]=0
                            [5]=0
                            [6]=0
                        )
max_count=10

while(( dictionary[$result] < max_count ))
do

result=$(( RANDOM % 6 + 1 ))
    (( dictionary[$result]++))
done


echo "${!dictionary[@]}"
echo "$least_frequent_number{dictionary[@]}"

#ASSUME most_frequent_number AND least_frequent_number
most_frequent_number=1
least_frequent_number=5

for (( i=1 ; i <=6 ; i++))
do

if(( dictionary[$i] >= dictionary[$most_frequent_number] ))
    then
        most_frequent_number=$i
fi


if(( dictionary[$i] <= dictionary[$most_frequent_number] ))
    then
        least_frequent_number=$i
fi

done


echo "most_frequent_number:$most_frequent_number"
echo  "least_frequent_number:$least_frequent_number"

