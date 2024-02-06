#!/bin/bash

array[0]=1
array[1]=2
array[2]=3
echo "${array[0]},${array[1]},${array[2]}"
for i in array; do
	echo $i
done
