#! /bin/bash
heads=0
tails=0
while [ $heads -lt 21 ] && [ $tails -lt 21 ]
do
	if [ $(( RANDOM%2 )) -eq 0 ]
	then
		((heads++))
	else
		((tails++))
	fi
done
if [ $heads -eq 21 ]
then
	res=$(( $heads-$tails ))
	echo "heads=" $heads " Heads won by " $res
else
	res1=$(( $tails-$heads ))
	echo "tails=" $tails " Tails won by " $res1
fi
if [ $heads -eq $tails ]
then
	echo "it's a tie " $heads $tails
	while [ $(( $heads-$tails )) -ne 2 ]
	do
		if [ $(( RANDOM%2 )) -eq 0 ]
		then
			((heads++))
		else
			((tails++))
		fi
	done
fi
echo "heads " $heads
echo "tails " $tails
