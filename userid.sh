#!/bin/bash
USERID="$1"
/bin/id $USERID 2>/dev/null
[ $? -eq 0 ] && echo "User found" || echo "User not found"
 
/bin/id -g $USERID 2>/dev/null
[ $? -eq 0 ] && echo "Group found" || echo "Group not found"
