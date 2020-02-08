#!/bin/bash
echo "----welcome to gambling Simulation----"
#initialize variable
stake_for_day=100
Bet=1
declare -A result
#calculate resignpercent
function resignpercent() {
	echo "$(($stake_for_day*50/100))"
}
for (( i=1; i<=20; i++ ))
do
	val="$(resignpercent)"
	#50%greater than stake
	wonResign=$(($stake_for_day+$val))
	#echo $wonResign
	#50% less than stake
	loseResign=$(($stake_for_day-$val))
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
for j in ${!result[@]}
do
	value=${result[$j]}
	echo $j"  "$value
done 

