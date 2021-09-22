#!/bin/bash
# this file cannot be marked executable for compatibility with overleaf

set -e

bash ./ci/test_merge_conflict_markers.sh && echo "✔ conflict markers ok" || exit 1
bash ./ci/test_missing_newlines.sh && echo "✔ EOF newlines ok" || exit 1
bash ./ci/test_tabs.sh && echo "✔ indentation ok" || exit 1
bash ./ci/test_trailing_whitespace.sh && echo "✔ trailing whitespace ok" || exit 1
bash ./ci/test_symlinks.sh && echo "✔ symlinks ok" || exit 1
bash ./ci/test_execute_permissions.sh && echo "✔ execute permissions ok" || exit 1
