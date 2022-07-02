Wageph=20

#FullDayhr=8
#PartTimehr=4

maxworkday=20
maxhr=100
ttlworkhr=0
ttlworkday=0

while (($ttlworkhr<$maxhr && $ttlworkday<$maxworkday))
do
x=$(($RANDOM%3))

((ttlworkday++))
case $x in
	1)
	#Employee is Present"
	hrpd=8
	;;

	2)
	#Employee is working Part Time"
	hrpd=4
	;;

	*)
	#Employee is Absent"
	hrpd=0
	;;

esac
ttlworkhr=$(($ttlworkhr+$hrpd))
done

totalSalary=$(($ttlworkhr*$ttlworkday*$Wageph))
echo "Total Salary of Employee is: " $totalSalary
