file="random.txt"
total_commits=36
max_interval_seconds=10800
desired_sum_intervals=10800
sum_intervals=0

for ((i=1; i<=total_commits; i++))
do
    # Calculate the remaining time to meet the desired sum
    remaining_time=$((desired_sum_intervals - sum_intervals))

    # Ensure the interval does not exceed the remaining time
    interval=$((RANDOM % remaining_time + 1))

    sum_intervals=$((sum_intervals + interval))

    echo "Added something to the file - $i" >> $file
    git add $file
    git commit -m "Commit $i: Added something to the file"
    echo "Commit $i: Added something to the file"

    sleep $interval
done

echo "Sum of all intervals: $sum_intervals seconds"
