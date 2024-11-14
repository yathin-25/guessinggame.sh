#!/bin/bash

# Function to count files in the current directory
count_files() {
    echo $(ls -1 | wc -l)
}

# Main program
echo "Welcome to the Guessing Game!"
correct_number=$(count_files)
guess=-1

while [[ $guess -ne $correct_number ]]; do
    read -p "How many files are in the current directory? " guess
    
    if [[ $guess -lt $correct_number ]]; then
        echo "Your guess is too low. Try again!"
    elif [[ $guess -gt $correct_number ]]; then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed it right!"
    fi
done
