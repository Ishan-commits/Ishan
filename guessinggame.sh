#!/usr/bin/env bash
# File: guessinggame.sh
# Peer graded assignment for Coursera/JHU The Unix Workbench

count=$(ls -1 | wc -l)

function correct_guess {
    if [[ $1 -lt $2 ]]
    then
	echo "Too low!"
    elif [[ $1 -gt $2 ]]
    then
	echo "Too high!"
    fi
}

while [[ $count -ne $guess ]]
do
    echo "Guess how many files are in the current directory?"
    read guess
    echo "You entered: $guess"
    echo $(correct_guess $guess $count)
done

echo "Congratualation! You guessed right!"
