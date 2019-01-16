#!/bin/sh

FROM_DIR=$1
TO_DIR=$2
SUFFIX=$3

cp -r ${FROM_DIR}/ ${TO_DIR}
sed -i "s/org.wildfly.extension.microprofile.health-subsystem-base/&${SUFFIX}/" ${TO_DIR}/main/module.xml
sed -i "s/io.smallrye.health/&${SUFFIX}/" ${TO_DIR}/main/module.xml
