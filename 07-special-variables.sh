#!/bin/bash

echo "all variables: $@"
echo "no of variables passed: $#"
echo "script name: $0"
echo "current working directory: $PWD"
echo "home directory of current user: $HOME"
echo "which user is running: $USER"
echo "host name: $HOSTNAME"
echo "processing id of current script: $$"
echo "pid of last bacground command: $!"