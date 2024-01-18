#!/bin/bash

# 문자열 변수가 null 인지 검사 : -z, 아닌지 검사 : -n
if [ -z $1 ]
then
	echo True
else
	echo False
fi

# 정수 비교 연산자
# -eq : equal -ne : not equal
# -gt, -ge >
# -lt, -le <
# >, < >= <= 은 중첩 소괄호 필요

num1=100; num2=200; num2_=200; num3=300
if [ $num2 -eq $num2_ ]; then echo "Equal"; fi
if [ $num2 = $num2_ ]; then echo "=Equal"; fi
if [ $num1 -ne $num2 ]; then echo "Not Equal"; fi
if [ $num1 != $num2 ]; then echo "!=Not Equal"; fi
if [ $num1 -gt $num2 ]; then echo "$num1 -gt $num2 O"; else echo "$num1 -gt $num2 X"; fi
if [ $num1 -lt $num2 ]; then echo "$num1 -lt $num2 O"; else echo "$num1 -lt $num2 X"; fi
if (( $num1 > $num2 )); then echo "$num1 > $num2 O"; else echo "$num1 > $num2 X"; fi
if (( $num1 < $num2 )); then echo "$num1 < $num2 O"; else echo "$num1 < $num2 X"; fi

