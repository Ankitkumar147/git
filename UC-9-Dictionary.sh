#!/bin/bash -x

isParttime=1
isFulltime=2
empRatePerHr=20
totalsalary=0
numofworkingdays=20
maxRateinMonth=100

totalEmpHr=0
totalworkingdays=0


function getworkingHrs()
{
        case $randomcheck in
                        $isFulltime )
                                empHrs=8
                        ;;
                        $isParttime )
                                empHrs=4
                        ;;
                        *)
                                empHrs=0
                        ;;
        esac
}

function getEmpwage() {
	echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr -lt $maxRateinMonth &&
        $totalworkingdays -lt $numofworkingdays ]]
do
        ((totalworkingdays++))
        randomcheck=$((RANDOM%3))
        getworkingHrs $randomcheck
        totalEmpHr=$(($totalEmpHr+$empHrs))
	dailywages["$totalworkingdays"]=$(($empHrs*$empRatePerHr))

done

totalsalary="$( getEmpwage $totalEmpHr )"
echo ${dailywages[@]}

echo ${!dailywages[@]}
echo ${#dailywages[@]}
