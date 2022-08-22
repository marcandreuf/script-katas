#!/bin/bash

ls_dir() {
	echo
	local f
	for f; do
		case "$f" in
			*.txt)
				echo "txt file: $f";;
			*.*)	echo "other file: $f";;
			*)	echo "other dir: $f";;
		esac
		echo
	done
}

ls_dir file.txt file1.sh folder

