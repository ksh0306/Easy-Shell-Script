#!/bin/bash

echo "for param in $*"
for param in $*
do
    echo "param = $param"
done
echo

echo "for param in $@"
for param in $@
do
    echo "param = $param"
done
echo

# deal parameters one string
echo "for param in \"\$*\"" 
for param in "$*"
do
    echo "param = $param"
done
echo

# deal parameters one string in quoted.
echo "for param in \"\$@\""
for param in "$@"
do
    echo "param = $param"
done
echo

echo $$ # PID
echo $? # latest end condition
echo $! # latest ran background PID
echo $- # option flags