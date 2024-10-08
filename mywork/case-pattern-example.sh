#!/bin/bash

read -p "enter word >"

case $REPLY in
	[[:alpha:]])	echo "is a single alphabetic character.";;
	[ABC][0-9]) 	echo "is A, B, C or C followed by a digit.";;
	???)			echo "is three characters long.";;
	*.txt)			echo "is a word ending in '.txt'";;
	*)				echo "is something else.";;
esac
