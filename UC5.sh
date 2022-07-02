Wageph=20
FullDayhr=8
PartTimehr=4
workday=20

x=$(($RANDOM%3))

case $x in
	1)
	echo "Employee is Present"

	MonthlyWage=$(($Wageph*$FullDayhr*$workday))
	echo "Monthly Wage of Employee is: " $MonthlyWage
	;;

	2)
	echo "Employee is working Part Time"

	MonthlyPartTimeWage=$(($workday*$Wageph*$PartTimehr))
	echo "Part Wage of Employee is: " $MonthlyPartTimeWage
	;;

	*)
	echo "Employee is Absent"

	MonthlyWageab=$(($Wageph*$FullDayhr*19))
	echo "Monthly Wage of Employee is: " $MonthlyWageab
	;;
esac
