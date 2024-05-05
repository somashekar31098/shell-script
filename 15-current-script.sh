#!/bin/bash

COURSE="devops from current script"

echo "before calling other script , course: $COURSE"
echo "PID of current script: $$"

./16-other-script.sh

echo "after calling other script , course: $COURSE"
echo "PID of current script: $$"
