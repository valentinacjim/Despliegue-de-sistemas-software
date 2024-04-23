output=$(py -3.12 -m flake8 movies/movie*.py web_app.py)

if [[ -n "$output" ]]; then
    echo "Script output:"
    echo "$output"
else
    echo "No flake8 issues found in the Python code."
fi