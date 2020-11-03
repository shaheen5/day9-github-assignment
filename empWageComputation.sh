#!/bin/bash -x

echo "Welcome to Employee Wage Computation!!!"

#check employee attendance
if [ $(( RANDOM%2  )) == 1 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
