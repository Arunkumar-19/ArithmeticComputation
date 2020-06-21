#!/bin/bash

read -p "Enter a : " a
read -p "Enter b : " b
read -p "Enter c : " c

x=$((a+b*c))

echo "computation of (a+b*C) is $x"
