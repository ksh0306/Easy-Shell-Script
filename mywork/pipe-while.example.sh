#!/bin/bash

count=0
ls -al | while read mode a owner group size b c d  name; do
	if [[ $count > 0 ]]; then
		printf "mode= %s\towner=%s\tgroup=%s\tsize=%s\tname=%s\n"\
				$mode \
				$owner \
				$group \
				$size \
				$name
	fi
	count=$((count+1))
done
