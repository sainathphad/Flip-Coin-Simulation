#! /bin/bash
heads=0
tails=0
for (( i=0; i<1000; i++ ))
do
	if [ $(( RANDOM%2 )) -eq 0 ]
	then
		((heads++))
	else
		((tails++))
	fi
done
echo $heads " times Heads won"
echo $tails " times Tails won"
