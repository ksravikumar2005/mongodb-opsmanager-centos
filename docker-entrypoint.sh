#!/usr/bin/env bash
set -e

stop_mms()
{
    echo "stopping mongodb-mms"
    /opt/mongodb/mms/bin/mongodb-mms stop
}

case "$1" in
    "app" | "mongodb-mms")
        trap stop_mms HUP INT QUIT KILL TERM
        /opt/mongodb/mms/bin/mongodb-mms start
        echo MongoDB Ops Manager is running.  Check the logs folder for logs.
        while true ; do
            sleep 1000
        done
        ;;
    *)
        exec "$@"
        ;;
esac
