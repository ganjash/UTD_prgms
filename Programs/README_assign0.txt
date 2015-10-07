1)	The program is written in python.

2)	To execute the program, the user should first install python 2.7 from https://www.python.org/downloads/

3) 	Once, installed, double click the python file to run the program.

4)	The output in the end , gives the optimal method to choose to win most games.

5)	The output is written in the following format:


=================================== ROUND 1 ===================================
1000 	-100 		1000 	-100 		1000 	-100 	3 	LOOSE
900 	-100 		900 	-200 		900 	-100 	7 	WIN
1100 	-100 		1300 	-100 		1100 	-200 	8 	WIN
1300 	-100 		1500 	-100 		1500 	-400 	7 	LOOSE
1200 	-100 		1400 	-200 		1100 	-100 	7 	LOOSE
1100 	-100 		1200 	-400 		1000 	-100 	12 	LOOSE
1000 	-100 		800 	-800 		900 	-100 	2 	LOOSE
900 	-100 		0 	0 		800 	-100 	9 	WIN
1100 	-100 		0 	0 		1000 	-200 	7 	LOOSE
1000 	-100 		0 	0 		800 	-100 	4 	WIN
1200 			0 			1000
\           /          \           /           \           /    \           / 
 \---------/            \---------/             \---------/      \---------/

 Even Wager              Martingale         Reverse Martingale  Outcome of each game


6)	The game is played for 5 rounds, and after the last round , the best method to win the game is printed

7)	The output is printed into a file named : "observation.txt" in the same location as of python file.