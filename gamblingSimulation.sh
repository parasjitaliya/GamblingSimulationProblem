#!/bin/bash
echo "----welcome to gambling Simulation----"
#initialize variable
stake_for_day=100
bet=1

check=$((RANDOM%2))
if [ $check -eq 1 ]
then
	echo "WON"
	amount=$(($STAKE_FOR_DAY+$BET_PER_GAME))
else
	echo "LOST"
	amount=$(($STAKE_FOR_DAY-$BET_PER_GAME))
fi        
}

