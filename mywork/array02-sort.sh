#!/bin/bash

a=(f e d c b a)
echo "Original array: ${a[@]}"
a_s=($(for i in "${a[@]}"; do echo $i; done | sort))
echo "Sorted array: ${a_s[@]}"
