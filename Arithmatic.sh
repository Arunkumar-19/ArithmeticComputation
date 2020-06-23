#!/bin/bash

read -p "Enter a : " a
read -p "Enter b : " b
read -p "Enter c : " c



x=`echo $a $b $c | awk '{print $3+$1/$2}'`
echo $x
