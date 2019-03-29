#!/usr/bin/env bash
#
# Helper for Idea to start bundler
#
bundle $*
#
readonly return_code=$(echo $?)
#
exit ${return_code}