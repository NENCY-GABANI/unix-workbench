function guess {

local count=$(ls . | wc -w) 
local condition=1
local answ=0

while [[ $condition -eq 1 ]]
do
	echo "guess the number of files in this directory?"
	read answ
	if [[ $answ -eq $count ]]
		
		then condition=0
		echo "Congratulations! Correct answer!"
	elif [[ $answ -lt $count ]]
		then
		echo "too low"
	else
		echo "too high"
	fi
done


}

guess

