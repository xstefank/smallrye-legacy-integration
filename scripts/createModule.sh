#!/bin/sh

MODULE_NAME=$1
MODULE_XML=$2
ARTEFACT=$3
OUTPUT_DIR=$4

MODULE_PATH=`sed -r 's#\.#/#g' <<< ${MODULE_NAME}`
MODULE_DIR=${OUTPUT_DIR}/${MODULE_PATH}/main


if [[ ! -d ${MODULE_DIR} ]]; then
    mkdir -p ${MODULE_DIR}
fi

# copy resources
cp ${MODULE_XML} ${MODULE_DIR}/module.xml
cp ${ARTEFACT} ${MODULE_DIR}

echo "Module ${MODULE_NAME} has been created in the ${OUTPUT_DIR} directory. You can copy it to your server installation."
