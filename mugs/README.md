- Bash Test Script

---Description

You are in a room with a circle of 100 cups and the cups are numbered sequentially from 1 to 100.
At some point in time, cup #1 will be taken away... Cup #2 will be skipped, and cup #3 will be taken away.
This pattern of skipping one cup and asking the next to leave will keep going around the circle until there is one cup left.
Write a program to determine which cup is left.
Your code should print the answer to the cup challenge when there are 100 cups.

---Name

assesment.sh

---Logic

First: print out the list of mugs on the table to make the idea.
Second: run the loop removing in the requested sequence the mugs on the round table. Over this step will be printed out the taken mugs. 
Third: when the mug on the desk will be one, the script will print out the result and clean the temporary files.

---Algotithm
Start removing the odd mugs and checking every loop the number of the last mug.
if the last of the remained mgs is not removed: the sequence will start removing to the next ride from the first mug;
otherwise will leave the first mug and will start taking the second one.

---Fun
Change the NMUG variable to test with a different number of mugs keeping the same sequence.

---REQUIREMENTS
a modern bash shell (this has been done with GNU bash, version 4.3.48(1)-release (x86_64-pc-linux-gnu) )

---TEST
The script has been tested several times with different number of cups and all the results are matching with a manual excel sheet.


- Dockerfile

---Description
Been left on the main page a Dockerfile.
Fell free to run with docker: " sudo docker build -t test-mugs . "
