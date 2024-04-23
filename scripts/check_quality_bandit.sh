output=$(py -3.12 -m bandit -r movies/movie*.py)
issues=$(echo "$output" | grep -c ">> Issue: ")

if [[ "$issues" -eq 0 ]]; then
    echo "No bandit issues found in the Python code."
else
    echo "Bandit issues found."
    echo "Script output:"
    echo "$output"
fi