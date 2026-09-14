date="no_date"
g=$(which git)
if [[ $g != "" ]]; then
	date=$(git log | grep Date 2>/dev/null | head -n 1 | sed -r 's/Date: +[A-Z][a-z]+ ([A-Z][a-z]+) ([0-9]+) [^ ]+ ([0-9]+) .+/\2 \1 \3/')
fi
echo $date
