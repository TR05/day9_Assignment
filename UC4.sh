Wageph=20
FullDayhr=8
PartTimehr=4

x=$(($RANDOM%3))

case $x in
	1)
	echo "Employee is Present"
	;;
	2)
	echo "Employee is working Part Time"

	PartTimeWage=$(($Wageph*$PartTimehr))
	echo "Part Wage of Employee is: " $PartTimeWage
	;;
	*)
	echo "Employee is Absent"
	;;
esac

if [[ $x -eq 1 || $x -eq 0 ]]
then
	DailyWage=$(($x*$Wageph*$FullDayhr))

	echo "Daily Wage of Employee is: " $DailyWage
fi
