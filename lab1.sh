#! /bin/sh
if [ -n "$1" ]
then
    a=`ps -o ppid --no-headers -p $1`
    if [ -n "$a" ]
    then 
        echo $1 "parent is " $a ". It's going to be brutally murdered."
        kill $a
        echo "Great success!"
    else
    echo "Cannot find the parent"
    fi
else
echo "No parameters found. "
fi

