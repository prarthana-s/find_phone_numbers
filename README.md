# find_phone_numbers

find_numbers.sh is a bash script that searches files recursively through the current directory to find Indian phone numbers (described below), and prints it on the terminal and also writes the output in a file named list_of_numbers

*What is the format of Indian numbers?<br>
They are 10 digits long, and start with 7, 8 or 9. <br>
More details available here: https://en.wikipedia.org/wiki/Mobile_telephone_numbering_in_India

*To run, execute the following command on a terminal:<br>
sh find_numbers.sh

*The output file list_of_numbers is stored outside the current directory, and will contain the phone numbers, one on each line. It is stored outside the current directory to avoid pattern matches in the output file during script re-runs.

*A Sample_folder has been created with text files containing phone numbers to test the script.<br>
Expected results is a file with 12 phone numbers.<br>

grep options explained:<br>
-r: recursively searches through directory<br>
-o: displays only the matched pattern, and not the whole line<br>
-h: hides the file name where a pattern is matched<br>
--exclude='*.txt~' : prevents searching in backup files to avoid duplication
. : indicates the current root directory

*Make the suggested modifications to tweak the script according to your needs:

Original script:<br>
grep -roh --exclude='*.txt~' "\b[789][0-9]\{9\}\b" . | tee ../list_of_numbers

Only print results on terminal:<br>
grep -roh --exclude='*.txt~' "\b[789][0-9]\{9\}\b" . 

Only write output to file:<br>
grep -roh --exclude='*.txt~' "\b[789][0-9]\{9\}\b" . > ../list_of_numbers

Display name of a file where a phone number is found:<br>
grep -ro --exclude='*.txt~' "\b[789][0-9]\{9\}\b" . | tee ../list_of_numbers

Search another directory recursively:<br>
grep -roh --exclude='*.txt~' "\b[789][0-9]\{9\}\b" [Directory_name] | tee ../list_of_numbers
