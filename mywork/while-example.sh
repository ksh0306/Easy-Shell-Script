#!/bin/bash

num1=0
while [ $num1 -lt 3 ]
do
	echo $num1
	num1=$(($num1+1))
done
echo "finally num1=$num1"
