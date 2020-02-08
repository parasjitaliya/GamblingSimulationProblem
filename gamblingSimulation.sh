#!/bin/bash
echo "----welcome to gambling Simulation----"
#initialize variable
stake_for_day=100
bet=1
#calculate resignpercent
function resignpercent() {
	echo "$(($stake_for_day*50/100))"
}
val="$(resignpercent)"
wonResign=$(($stake_for_day+$val))
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
}

