#!/bin/bash
file="tt.txt"
IFS=$'\n'
$n=0
$m=0
$sum=0
for var in $(cat $file)
do
((n++))
if [ $n -ge 9429 ] ; then
if [ $n -le 9525 ] ; then
echo -e "$var"
fi
fi
done



