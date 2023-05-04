#!/bin/bash
##Script Accepts Two Floating Point Numbers FRom Command Line AS Parameters ,Make OPerations on them and Display the Result
##Parameters
##   1st Parameter: 1st Number
##   2nd Parameter: 2nd Number 
##Exit Codes:
##   0 : Success
##   1 : Not Enough Parameters
##   2 : Division by Zero

## Check For Parameters
[ ${#} -ne 2 ] && echo "Not Enough Parameters" && exit 1

## Assign Values to Custom Variables
NUM1=$(echo "${1}" | bc)
NUM2=$(echo "${2}" | bc)

#Operations
## Sum
echo "sum of ${NUM1} + ${NUM2} = " $(echo ${NUM1} + ${NUM2} | bc)

## Sub
echo "subtract of ${NUM1} and ${NUM2} = " $(echo ${NUM1} - ${NUM2} | bc)

## division
echo "division of ${NUM1} and ${NUM2} = " $(echo ${NUM1} / ${NUM2} | bc)

## multiply
echo "multiplication of ${NUM1} and ${NUM2} = " $(echo ${NUM1} \* ${NUM2} | bc)

exit 0