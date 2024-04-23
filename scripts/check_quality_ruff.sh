output=$(ruff check movies/movie*.py web_app.py)
expected="All checks passed!"

if [[ "$output" = *"$expected"* ]]; then
    echo "No ruff issues found in the Python code."
else
    echo "Ruff checks failed."
    echo "Script output:"
    echo "$output"
fi