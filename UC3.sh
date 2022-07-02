echo -e "Employee attendance\n"

Wageph=20
FullDayhr=8
PartTimehr=4

x=$(($RANDOM%3))

if [ $x -eq 1 ]
then
	echo "Employee is Present"
elif [ $x -eq 2 ]
then
	echo "Employee is working Part Time"

	PartTimeWage=$(($Wageph*$PartTimehr))
	echo "Part Wage of Employee is: " $PartTimeWage
else
	echo "Employee is Absent"
fi

if [[ $x -eq 1 || $x -eq 0 ]]
then
	DailyWage=$(($x*$Wageph*$FullDayhr))

	echo "Daily Wage of Employee is: " $DailyWage
fi
