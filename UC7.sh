Wageph=20

#FullDayhr=8
#PartTimehr=4

maxworkday=20
maxhr=100
ttlworkhr=0
ttlworkday=0

while (($ttlworkhr<$maxhr && $ttlworkday<$maxworkday))
do
	((ttlworkday++))

	x=$(($RANDOM%3))
	workhr=$(WORKHOURS $x)

	ttlworkhr=$(($ttlworkhr+$hrpd))
done

function WORKHOURS (){
x=$1

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
echo $hrpd

}

totalSalary=$(($workhr*$ttlworkday*$Wageph))
echo "Total Salary of Employee is: " $totalSalary
