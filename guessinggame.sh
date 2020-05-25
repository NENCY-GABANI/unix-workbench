g=$(ls | wc -l)
c=0
echo " ENTER NUMBER FOR GUESS (between 1 to 10) : "
read guessno
while(($guessno -ne "q")) do
	if[$guessno -lt $g] then 
		echo " !!!!! GUESS IS TOO LOW !!!!!  "
		c=c+1
	elif[$guessno -gt $g] then
		echo " !!!!! GUESS IS TOO HIGH !!!!!! "
		c=c+1
	else
		echo " ----- CONGRATULATIONS PERFECT GUESS NO IS $guessno ----- "
		break
	fi
done
echo " YOUR TOTAL NO OF TRIES : $c "
exit

