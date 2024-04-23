output=$(py -3.12 -m pylint movies/movie*.py web_app.py)

score=$(echo "$output" | grep -oE '[0-9]+\.[0-9]+' | head -1)

if python -c 'import sys; sys.exit(0 if '"$score"' >= 7 else 1)'; then
    echo "Pylint score ($score) is good (greater than 7)."
else
    echo "Pylint score ($score) is not sufficient (less than or equal to 7)."
fi