#!/bin/bash

file="random.txt"
total_commits=36
max_interval_seconds=10800  

for ((i=1; i<=total_commits; i++))
do

    interval=$((RANDOM % max_interval_seconds + 1))
    
    echo "Added something to the file - $i" >> $file

    git add $file
    git commit -m "Commit $i: Added something to the file"

    echo "Commit $i: Added something to the file"
    
    sleep $interval
done

