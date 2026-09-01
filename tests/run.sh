#!/usr/bin/env bash
#
# Detects accidental colorscheme changes by diffing against committed snapshots.
#
# After an intentional color change, regenerate a snapshot by hand (from the
# repository root) and review the resulting diff before committing it:
#
#   for background in dark light; do nvim --headless --clean --cmd "set rtp+=${PWD}" -l tests/snapshot.lua "${background}" > "tests/snapshots/${background}.txt"; done

set -euo pipefail

cd "$(dirname "$0")/.."

status=0
for background in dark light; do
    expected_output_file="tests/snapshots/${background}.txt"
    actual_output="$(nvim --headless --clean --cmd "set rtp+=${PWD}" -l tests/snapshot.lua "${background}")"

    # Command substitution strips all trailing newlines, so don't forget the '\n'.
    if printf '%s\n' "${actual_output}" \
        | diff --unified \
        --label "expected (${expected_output_file}, ${background})" \
        --label "actual (${background})" \
        "${expected_output_file}" - ; then

        echo "OK ${expected_output_file}"
    else
        echo "MISMATCH ${expected_output_file}"
        status=1
    fi
done

exit "${status}"
