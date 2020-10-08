#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "Enter first Number" firstnum
read -p "Enter Second Number" secondnum
read -p "Enter Third Number" thirdnum

sum=$((firstnum + secondnum + thirdnum))
dividend=$((firstnum / secondnum))
multiply=$((firstnum*secondnum*thirdnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum  plus $thirdnum is $sum
$firstnum multiply by $secondnum multiply by $thirdnum is $multiply
  - More precisely, it is $fpdividend
EOF
