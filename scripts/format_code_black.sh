output=$(black movies/movie*.py web_app.py)

if [[ -z "$output" ]]; then
    echo "No black issues found in the Python code."

else
    echo "Script output:"
    echo "$output"
fi
