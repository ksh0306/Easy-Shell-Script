#!/bin/bash


# cases of declare array
array[0]=1
array[1]=2
array[2]=3

array01=(1 2 3 4 5)

days=([0]=Sun [1]=Mon [2]=Tue [3]=Wed [4]=Thu [5]=Fri [6]=Sat)

declare -a days2
days2[0]=SUN
days2[1]=MON
days2[2]=TUE
days2[3]=WED
days2[4]=THU
days2[5]=FRI
days2[6]=SAT

# show all elements of arrays
echo ${array[*]}
echo ${array[@]}
for i in ${array01[*]}; do echo $i; done
for (( i=0; i<${#days[@]}; i++ )) do echo "days[$i]=${days[i]}"; done
for i in ${days2[*]}; do echo $i; done

# add elements to array
array01+=(6)
echo ${array01[@]}
array01+=(7 8 9)
echo ${array01[@]}

# sort case
a=(f e d c b a)
echo "Original array: ${a[@]}"
a_s=($(for i in "${a[@]}"; do echo $i; done | sort))
echo "Sorted array: ${a_s[@]}"

# unset array
echo "Array a_s=${a_s[@]}"
unset 'a_s[2]'
echo "after unset 'a_s[2]', Array a_s=${a_s[@]}"
unset a_s
echo "after unset, Array a_s=${a_s[@]}"

