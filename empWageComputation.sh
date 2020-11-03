#!/bin/bash -x

echo "Welcome to Employee Wage Computation!!!"

#constants
EMP_PART_TIME=1
EMP_FULL_TIME=2
EMP_RATE_PER_HOUR=20

#variables

case $(( RANDOM%3)) in
			$EMP_PART_TIME) working_hours=4;;
			$EMP_FULL_TIME) working_hours=8;;
				     *) working_hours=0;;
esac
daily_wage=$(( working_hours*EMP_RATE_PER_HOUR ))
echo "Daily Employee Wage="$daily_wage
