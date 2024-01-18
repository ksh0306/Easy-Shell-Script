#!/bin/bash

function print() {
	echo $0
	echo $1
	echo $*
	echo $@
	echo $#
}

print "I can speak Korean."
