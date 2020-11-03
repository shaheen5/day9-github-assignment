#!/bin/bash 

echo "Welcome to Employee Wage Computation!!!"

#constants
EMP_PART_TIME=1
EMP_FULL_TIME=2
EMP_RATE_PER_HOUR=20
MAX_WORKING_DAYS=20

#variables
total_working_hours=0
total_wage=0
total_working_days=0

while [ $total_working_days -lt $MAX_WORKING_DAYS ]
do
	((total_working_days++));
	case $(( RANDOM%3 )) in
			$EMP_PART_TIME) working_hours=4;;
			$EMP_FULL_TIME) working_hours=8;;
				     *) working_hours=0;;
esac

daily_wage=$(( working_hours * EMP_RATE_PER_HOUR ))
total_working_hours=$(( total_working_hours + working_hours ))
total_wage=$(( total_wage + daily_wage ))
done
echo "Total Wage="$total_wage
