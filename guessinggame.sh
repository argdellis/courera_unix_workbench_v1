#!/usr/bin/env bash
# File: guessinggame.sh
function var_number_of_files() {
    #function to read the number of files in the folder
    real_number_of_files=$(ls | wc -l)
    # echo $real_number_of_files
    return $real_number_of_files
}
function check_number_is_correct() {
    #function to check if the user input is correct
    if [[ $1 != ?(-)+([0-9]) ]]
    then
    echo "Please enter an integer number greater than zero"
    echo "Please try again "
    out=0
    elif [[ $1 -eq $2 ]]
    then
    echo "Congratulation! The number you entered is correct!"
    echo "Program finished"
    out=1
    elif [[ $1 -gt $2 ]]
    then
    echo "The number you entered is too high"
    echo "Please try again"
    out=0 
    elif [[ $1 -lt $2 ]]
    then
    echo "The number you entered is too low"
    echo "Please try again "
    out=0
    fi
    return $out
}
var_number_of_files
n=$? #Variable with the right number of files
echo "Hello user. Can you guess how many files are in the current directory?"
echo "Please enter a number"
read var_guessed_number_files
test=0
while [[ $test -eq 0 ]]
do 
check_number_is_correct $var_guessed_number_files $n
test=$?
if [[ $test -eq 0 ]]
then
read var_guessed_number_files
else
break
fi
done
