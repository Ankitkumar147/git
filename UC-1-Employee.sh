#!/bin/bash -x

isPresent=1
randomcheck=$((RANDOM%2))

if (( $isPresent == $randomcheck ))

then
      echo " Employee is Present "
else
      echo " Employee is Absent "
fi

