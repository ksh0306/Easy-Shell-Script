#!/bin/bash

for ((i=1; i<=5; i++))
do
	echo $i
done

for num in 1 2 3
do
	echo $num;
done

nums1="1 2 3"
for num in $nums1
do
	echo $num;
done

for file in $HOME/*
do
	echo $file;
done

sum=0
for num in {1..5}
do
	sum=$(($sum+$num));
done
echo $sum;

sum=0
for num in {1..10..2}
do
	sum=$(($sum+$num));
done
echo $sum;



