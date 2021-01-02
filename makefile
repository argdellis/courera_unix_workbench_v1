README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "* The program was updated on:" >> README.md
	@date >> README.md
	@echo "* Lines of code in this program:" >> README.md
	@wc -l guessinggame.sh >> README.md
clean:
	@rm README.md
