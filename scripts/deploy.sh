#!/bin/sh

ZIP_PATH=$1

SERVER_DIR=${JBOSS_HOME}

if [[ -z "$SERVER_DIR" ]]; then
    SERVER_DIR=$2
fi

if [[ -z "$SERVER_DIR" ]]; then
    echo "Invalid JBOSS_HOME: You have to provide JBOSS_HOME as the first argument or as an environment variable"
    return 1
fi

echo $SERVER_DIR

unzip -oq $ZIP_PATH -d $SERVER_DIR
