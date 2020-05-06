#!/bin/bash
echo -n "Enter the value for 'input':"
read var1
until [ $var1 == quit ]
do
echo -n "Enter the value for 'input':"
read var1
done