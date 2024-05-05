#!/bin/bash


COURSE="Devops from current script"

echo "before calling other script, course: $COURSE"
echo "process id of current script: $$"

source ./16-other-script.sh

echo "After calling the other script, course: $COURSE"