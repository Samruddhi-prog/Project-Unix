all:Readme.md

Readme.md:
	echo "## The Unix WorkBench - Project" > Readme.md
	echo "#GuessingGame" >> Readme.md
	echo "Created On: " >> Readme.md
	date >> Readme.md
	echo  "\nThe number of lines in the file guessinggame.sh: " >> Readme.md
	cat guessinggame.sh | wc -l | cut -f 1 >> Readme.md


clean:
	rm Readme.md
