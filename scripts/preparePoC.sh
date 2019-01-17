#!/bin/sh

# install stub SmallRye Health 1.0.3 maven dependency
cd /tmp
git clone --single-branch --branch=dev-1.0.3 https://github.com/xstefank/smallrye-health.git
cd smallrye-health
mvn clean install -DskipTests



