#!/bin/bash -x

# longest-word: find longest string in a file

for i; do # for variable in words; do .. in words 부분이 생략되면 위치 매개변수가 들어간다.
	if [[ -r $i ]]; then
		max_word=
		max_len=0
		for j in $(strings $i); do
			len=$(echo $j | wc -c)
			if (( len > max_len )); then
				max_len=$len
				max_word=$j
			fi
		done
		echo "$i: '$max_word' ($max_len characters)"
	fi
done
