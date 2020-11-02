#!/bin/sh
# Executes a specified MATLAB command in batch mode

usage() {
    echo ''
    echo '    Usage: run_matlab_command.sh command dir'
    echo ''
    echo '    command       - MATLAB script, statement, or function to execute.'
    echo ''
    echo '    dir - desired directory in which you want to start MATLAB command '
}

command=$1
dir=$2
if [ -z "$command" ] || [ -z "$dir" ]; then
    usage
    exit 1
fi
cd "$dir"
/usr/bin/xvfb-run --auto-servernum --server-num=1 /100Gb/MathWorks/MATLAB/R2020b/bin/matlab -batch "$command"
