#!/bin/bash


proc_file() {
	echo "Processing file $1"
	echo "$1" > .latest_proc_sql
}

read_latest_proc_file() {
	if [ -e .latest_proc_sql ]
	then
		local fileName=$(head -n 1 .latest_proc_sql)
		echo "Latest proc file was: $fileName"
	else
		echo ".latest_proc_sql does not exists"
	fi
}

proc_file "filename$1.sql"
read_latest_proc_file


