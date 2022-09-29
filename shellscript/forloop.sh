#!/bin/bash


# A shell script to verify user password database

files="/etc/passwd /etc/group /etc/shadow /etc/gshdow"
for f in $files
do
	[  -f $f ] && echo "$f file found" || echo "*** Error - $f file missing."
done

[ $# -eq 0 ] && { echo "Usage: $0 file1 file2 fileN"; exit 1; }

# read all command line arguments via the for loop
for f in $*
   do
   echo
   echo "< $f >"
   [ -f $f ] && cat $f || echo "$f not file."
   echo "------------------------------------------------"
done



