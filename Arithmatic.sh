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
