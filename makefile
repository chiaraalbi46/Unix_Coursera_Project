
README.md: guessingname.sh
	echo "# Exercise new skills about Bash, Make, Git and GitHub" > README.md
	echo "- Date and time info about the creation of the README.md: " >> README.md
	date +"Year: %Y, Month: %m, Day: %d, Hour: %I, Minutes: %M, Seconds: %S" >> README.md
	echo "\n- The number of lines of guessingname.sh is: " >> README.md
	wc -l guessingname.sh | egrep -o "[0-9]+" >> README.md

