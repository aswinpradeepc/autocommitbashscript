#!/bin/bash

file="random.txt"

for ((i=1; i<=500; i++))
do
    # Generate a random commit message
    commit_message=$("Added something to the file - $i")

    # Add something to the text file
    echo "Added something to the file - $i" >> $file

    # Commit the changes
    git add $file
    git commit -m "$commit_message"

    echo "Commit $i: $commit_message"
done

