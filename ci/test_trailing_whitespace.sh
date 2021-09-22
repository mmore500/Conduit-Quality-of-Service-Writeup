#!/bin/bash
# this file cannot be marked executable for compatibility with overleaf

SOURCE_HASH=$( find -path ./subtree -prune -false -o -type f | sort | xargs cat | sha1sum )

bash ./ci/strip_trailing_whitespace.sh

if [ "${SOURCE_HASH}" == "$( find -path ./subtree -prune -false -o -type f | sort | xargs cat | sha1sum )" ];
then
  exit 0 # success
else
  echo "trailing whitespace detected, run ./ci/strip_trailing_whitespace.sh locally to find & fix"
  exit 1 # failure
fi
