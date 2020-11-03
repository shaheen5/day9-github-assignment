#!/bin/bash -x

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

#function to get employee work hours
getEmployeeWorkHours() {
 case $1 in
         $EMP_PART_TIME) working_hours=4;;
         $EMP_FULL_TIME) working_hours=8;;
                 *) working_hours=0;;
 esac
 echo $working_hours;
}

#calculate wages till the condition of total working days is reached for a month
while [ $total_working_days -lt $MAX_WORKING_DAYS ]
do
	((total_working_days++));
	working_hours=$( getEmployeeWorkHours $((RANDOM%3)) );
	temp_wage=$(( working_hours * EMP_RATE_PER_HOUR ));
	total_working_hours=$(( total_working_hours + working_hours ));
	total_wage=$(( total_wage + temp_wage ));
done
echo "Total Wage="$total_wage
