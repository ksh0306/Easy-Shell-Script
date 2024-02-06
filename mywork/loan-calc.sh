#!/bin/bash

# loan-calc: script to calculate monthly loan payments

PROGNAME=$(basename $0)

usage() {
	cat <<- __EOF__
	Using: $PROGNAME PRINCIPAL INTEREST MONTHS

	Where:
	PRINCIPAL is the amount of the loan.
	INTEREST is the APR as a number (7% = 0.07).
	MONTHS is the length of the loan's term.

	__EOF__
}

if (($# != 3));then
	usage
	exit 1
fi

principal=$1
interest=$2
months=$3

bc <<- __EOF__
	scale = 10
	i = $interest / 12
	p = $principal
	n = $months
	a = p * ((i * ((1 + i) ^ n)) / (((1 + i) ^ n) - 1))
	print a, "\n"
__EOF__
