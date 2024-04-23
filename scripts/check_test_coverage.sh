output=$(python3 -m pytest 'tests' --cov=movies)
coverage=$(echo "$output" | grep -oE "[0-9]+%" | tail -1)
cov_number=$(echo "$coverage" | grep -oE '[0-9]+')
threshold=90

echo "Coverage porcentage: $coverage"

if (( $(echo "$cov_number<$threshold" | bc -l))); then
    echo "Coverage is below the ($threshold%) threshold."
else
    echo "Coverage is above the ($threshold%) threshold."
fi
