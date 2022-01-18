#!/bin/bash

echo "This shell script name is $0"
echo "I can speak $1 and $2"
echo "This shell script parameter are $*"
echo "This shell script parameter are $@"
echo "This parameter count is $#"
echo 
echo "----------------1"
for lang in $*
do
	echo "I can speak $lang"
done
echo "----------------2"
for lang1 in $@
do
	echo "I can speak $lang1"
done

echo "----------------3"
for lang in "$*"
do
	echo "I can speak $lang"
done

echo "----------------4"
for lang1 in "$@":
do
	echo "I can speak $lang1"
done

echo 
echo $$
echo $?
echo $!
echo $-