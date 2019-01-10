#!/bin/sh

MODULE_NAME=$1
BASE_DIR=$2
ARTEFACT_NAME=$3

MODULE_PATH=`sed -r 's#\.#/#g' <<< ${MODULE_NAME}`
MODULE_DIR=${BASE_DIR}/target/module/${MODULE_PATH}/main

# copy resources
cp ${BASE_DIR}/src/main/resources/module/main/module.xml ${MODULE_DIR}/module.xml
cp ${BASE_DIR}/target/${ARTEFACT_NAME} ${MODULE_DIR}

echo "Module ${MODULE_NAME} has been created in the target/module directory. You can copy it to your WildFly installation"
