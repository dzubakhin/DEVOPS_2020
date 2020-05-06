#!/bin/bash
for var in $*
do
let "z=$var**2"
echo "$z"
done