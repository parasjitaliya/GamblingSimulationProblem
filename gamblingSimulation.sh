#!/bin/bash
echo "----welcome to gambling Simulation----"
#initialize variable
Bet=1
declare -A result
#calculate resignpercent
for (( i=1; i<=20; i++ ))
do
	stake_for_day=100
	#50%greater than stake
	wonResign=150
	
	#50% less than stake
	loseResign=50
	echo $loseResign
	while [[ $wonResign -gt $stake_for_day  && $loseResign -lt $stake_for_day ]]
	do
		#check win or lose 
		if [ $((RANDOM%2)) -eq 1 ]
		then
			((stake_for_day++))
		else
			((stake_for_day--))
		fi
	done
	result[$i]=$stake_for_day
done
	       
echo "Monthly win or loss ammount"
echo "D  Ammount"
echo ${result[@]}
for j in ${!result[@]}
do
	value=${result[$j]}
	echo $j" "$value
done | sort -k1 -n
echo "UnluckyDay::day:$(echo ${result[@]} | sort -n | awk '{print $1}')"
echo "LuckyDay::day:$(echo ${result[@]} | sort -nr | awk '{print $1}')"
#$(echo ${arr[*]} | sort -n | tail -1
