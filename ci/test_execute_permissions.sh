#!/bin/bash
# this file cannot be marked executable for compatibility with overleaf

# adapted from https://stackoverflow.com/a/41925756
# and https://unix.stackexchange.com/a/83904
if find . -type f -executable -not -path "./.git/*" -exec false {} +;
then
  exit 0 # success
else
  echo "execute permissions detected (incompatible with overleaf), run ./ci/strip_execute_permissions.sh locally to find & fix"
  exit 1 # failure
fi
