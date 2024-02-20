#!/bin/sh

# This program takes the following flags
#
# -a -> a boolean flag
# -b INT -> a flag that takes an integer value
# -v -> A flag that increases verbosity by one each time it is encountered
# FILENAME -> Positional argument, only allowed after flags
#


VERBOSITY=0
HAS_A=0
HAS_B=0
B_VALUE="False"
FILENAME=""

while getopts "ab:v" opt; do
	case "$opt" in
		a) HAS_A=1;;
		b) HAS_B=1;B_VALUE="$OPTARG";;
		v) ((VERBOSITY++));;
		*) echo "Error" && exit 1
	esac
done

shift $((OPTIND-1))

FILENAME="$1"


echo "A Flag set : $HAS_A"
echo "B Flag set : $HAS_B"
echo "B Flag val : $B_VALUE"
echo "VERBOSITY  : $VERBOSITY"
echo "FILENAME   : $FILENAME"
