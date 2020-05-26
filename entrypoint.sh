#!/bin/bash
set -e

# relative path of directory to build, i.e. the root of the
# application that we want to build.
APP_SUBDIR=${APP_SUBDIR:=.}

# set up the directory location to the mounted app and kick
# off the build and trigger tests.
export IMPORT_PATH=/github/workspace/${APP_SUBDIR}
/bin/herokuish buildpack test
