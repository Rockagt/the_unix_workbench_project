all: README.md

README.md: guessinggame.sh
	echo "##The Unix Workbench" > README.md
	echo "\n**Description**: the program asks how many files are in the directory and will finish until you guess." >> README.md
	echo -n "\n**Creation date:**" >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessingame.sh:** >> README.md
	grep -c '' guessingame.sh >> README.md


clean: 
	rm README.md
