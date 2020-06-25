#!/bin/bash

read -p "Enter a : " a
read -p "Enter b : " b
read -p "Enter c : " c

declare -A Arithmetic
Arithmetic[v]=$((a+b*c))
Arithmetic[w]=$((a*b+c))
Arithmetic[x]=`echo $a $b $c | awk '{print $3+$1/$2}'`
Arithmetic[y]=`echo $a $b $c | awk '{print $3%$1+$2}'`

echo "Results for evrey computation " ${Arithmetic[@]}

echo "Array in original order"
echo ${Arithmetic[@]}

for ((i = 0; i<5; i++))
do

    for((j = 0; j<5-i-1; j++))
    do

        if [ ${Arithmetic[j]} -gt ${Arithmetic[$((j+1))]} ]
        then
            temp=${Arithmetic[j]}
            Arithmetic[$j]=${Arithmetic[$((j+1))]}
            Arithmetic[$((j+1))]=$temp
        fi
    done
done
echo "Array in sorted order :"
echo ${Arithmetic[@]}
