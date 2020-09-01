
README.md: guessingname.sh
	echo "# Peer-graded Assignment: Bash, Make, Git and GitHub" > README.md
	echo "Date and time info about the creation of the README.md" >> README.md
	date "+Date: %D%nTime: %T" >> README.md
	echo "The number of lines of guessingname.sh is: " >> README.md
	wc -l guessingname.sh | egrep -o "[0-9]+" >> README.md

