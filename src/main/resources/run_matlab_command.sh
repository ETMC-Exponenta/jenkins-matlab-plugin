#!/bin/sh
# Executes a specified MATLAB command in batch mode

usage() {
    echo ''
    echo '    Usage: run_matlab_command.sh command'
    echo ''
    echo '    command       - MATLAB script, statement, or function to execute.'
    echo ''
}

command=$1
if [ -z "$command" ]; then
    usage
    exit 1
fi

/usr/bin/xvfb-run -a matlab -batch "$command"
