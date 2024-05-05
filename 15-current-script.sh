#!/bin/bash

COURSE="devops from the current script"

echo "before running current script ,course: $COURSE"
echo "process id of current script : $$"

source ./other-script.sh

echo "after running current script ,course: $COURSE"

