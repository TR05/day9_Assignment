echo -e "Employee attendance\n"

x=$(($RANDOM%2))

if [ $x -eq 1 ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi


Wageph=20
FullDayhr=8
DailyWage=$(($x*$Wageph*$FullDayhr))

echo "Daily Wage of Employee is: " $DailyWage
