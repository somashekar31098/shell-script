#!/bin/bash

COURSE="devops from first script"

echo "before calling second script, course: $COURSE"
echo "processing id of first script: $$"

source ./16-second-script.sh

echo "after calling second script, course: $COURSE"
