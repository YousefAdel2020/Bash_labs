#!/bin/bash
#script for make CRUD operations on students
#exit codes
#	0: Success
#	1: Can not find datafile
#	2: Can read from datafile
#	3: Can write to datafile
#	4: the GPA that you enter is not positive floating number
#	3: Can write to datafile
source menu.sh
source checker.sh
checkFile datafile
if [ ${?} -ne 0 ]
then
	echo "Can not find datafile"
	exit 1
fi
checkRFile datafile
if [ ${?} -ne 0 ]
then
        echo "Can read from datafile"
	exit 2
fi
checkWFile datafile
if [ ${?} -ne 0 ]
then
        echo "Can write to datafile"
	exit 3
fi

runMenu
exit 0
