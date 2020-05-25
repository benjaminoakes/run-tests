#!/bin/bash
set -e

# relative path of directory to build, i.e. the root of the
# application that we want to build.
APP_SUBDIR=${APP_SUBDIR:=.}

# set up the directory location to the mounted app
export IMPORT_PATH=/github/workspace/${APP_SUBDIR}

# customize the build and test commands if the respective
# environment variables are defined.
#if [[ -n "${BUILD_COMMAND}" ]]; then
#  ${BUILD_COMMAND}
#else
#  /bin/herokuish buildpack build
#fi

if [[ -n "${TEST_COMMAND}" ]]; then
  ${TEST_COMMAND}
else
  /bin/herokuish buildpack test
fi
