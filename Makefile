# Makefile for guessing game project

# Target to create README.md
README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "Date and Time: $(shell date)" >> README.md
	echo "Number of lines in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md

# Clean target to remove README.md
clean:
	rm -f README.md
