#!/bin/bash
echo "----welcome to gambling Simulation----"
#initialize variable
stake_for_day=100
bet=1
amount=0
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
	#50% less than stake
	loseResign=$(($stake_for_day-$val))

	while [[ $wonResign -gt $stake_for_day  && $loseResign -lt $stake_for_day ]]
	do
		#check win or lose 
		if [ $((RANDOM%2)) -eq 1 ]
		then
			echo "WON"
			amount=$(($stake_for_day+$Bet))
		else
			echo "LOST"
			amount=$(($stake_for_day-$Bet))
		fi
	done
	result[$i]=$amount
done        


