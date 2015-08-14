#!/bin/bash

#####
# exec.sh
# This script executes the command on the local system
# on a remote node.
# usage: exec.sh [username] [hostname] [command...]
#
# It uses some environment variables set by Rundeck if they exist:
# RD_NODE_EXEC_TEST: if "exec-test" attribute is set to "true" then do
#   a dry run of the command
#####

USER=$1
shift
HOST=$1
shift
CMD="$@"

#if exec-test is set to "true", do a dry run
if [[ "true" == "$RD_NODE_EXEC_TEST" ]] ; then
    echo "[exec] $CMD"
    exit 0
fi

if [[ -f "${RD_CONFIG_ENVFILE:-}" ]]
then
    source ${RD_CONFIG_ENVFILE:-}
fi

#finally, execute the command

echo "$(date): $@" >> /tmp/exec.log
exec "$@"

