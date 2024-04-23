output=$(radon cc -a movies/movie*.py web_app.py)
complexity=$(echo "$output" | grep -oP "[0-9]+\.[0-9]+" | tail -1)

if (( $(echo "$complexity<10" | bc -l))); then
    echo "Radon cc avg score ($complexity) is good (less than 10)."
else
    echo "Radon cc avg score ($complexity) is bad (greater than 10)."
fi