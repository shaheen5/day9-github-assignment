#!/bin/bash -x

echo "Welcome to Employee Wage Computation!!!"

#check employee attendance
if [ $(( RANDOM%2  )) == 1 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi


#calculate daily employee wage
wage_per_hour=20
total_working_hours=8
daily_wage=$(( wage_per_hour * total_working_hours ))
echo "Daily Employee Wage="$daily_wage

#part time employee and wage
part_time_working_hours=4
part_time_wage=$(( wage_per_hour*part_time_working_hours ))
echo "Part Time Employee Wage="$part_time_wage
