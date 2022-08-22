#!/bin/bash

# check to see if this file is being run or sourced from another script
_is_sourced() {
	[ "${#FUNCNAME[@]}" -ge 2 ] \
		&& [ "${FUNCNAME[0]}" = '_is_sourced' ] \
		&& [ "${FUNCNAME[1]}" = 'source' ]
}

sample_method() {
	echo "This is the original method"
}

# If we are sourced from elsewhere, don't perform any further actions

if ! _is_sourced; then
	sample_method "$@"
fi

