#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=30
totalSalary=0
numOfWorkingDays=20
maxRateInMonth=100

totalEmpHrs=0
totalWorkingDays=0

while [[ $totalEmpHrs -lt $maxRateInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]

do
		((totalWorkingDays++))
		randomCheck=$((RANDOM%3))
		case $randomCheck in
					$isPartTime )
						empHrs=4
					;;
					$isFullTime )
						empHrs=8
					;;
					*)
						empHrs=0
esac
		totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalSalary=$(($totalEmpHrs*$empRatePerHr))

