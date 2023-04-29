#!/bin/bash
########## script for making operation to floating point numbers
##Parameters
##	1st parameter: 1st float number
##	2nd parameter: 2nd float number
##Exit codes:
##	0 : Normal terminated
##	1: Not enough parameters
##	2 : NUM1 is not a float
##	3 : NUM2 is not a float


## Check for parameters
echo "hello world"
[ ${#} -ne 2 ] && exit 1

## Assign values to custom variables
NUM1=${1}
NUM2=${2}

## Check for float values
[ $(echo "${NUM1}" | grep -c "^\-\{0,1\}[0-9]*\.[0-9]*$") -ne 1 ] && exit 3
[ $(echo "${NUM2}" | grep -c "^\-\{0,1\}[0-9]*\.[0-9]*$") -ne 1 ] && exit 4

#adding the two numbers
RESULT=$(echo ${NUM1} + ${NUM2} | bc)

## Prints out the result
echo "the value is = ${RESULT}"


exit 0
