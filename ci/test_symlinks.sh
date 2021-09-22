#!/bin/bash
# this file cannot be marked executable for compatibility with overleaf

# adapted from https://stackoverflow.com/a/41925756
if find . -type l -not -path "./.git/*" -exec false {} +;
then
  exit 0 # success
else
  echo "symlinks detected (incompatible with overleaf), run ./ci/delete_symlinks.sh locally to find & fix"
  exit 1 # failure
fi
