#!/bin/bash
# vim: ai:ts=8:sw=8:noet
set -efCo pipefail
export SHELLOPTS
IFS=$'\t\n'

find ./dashboards -iname "*.json" -type f | while read file; do
    echo "Validating ${file}"
    jq empty ${file}
done
