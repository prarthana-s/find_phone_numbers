grep -roh --exclude='*.txt~' "\b[789][0-9]\{9\}\b" . | tee ../list_of_numbers
