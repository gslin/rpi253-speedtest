#!/bin/bash

set -euo pipefail
cd "$(dirname $0)"

main() {
    local D
    local D
    local R

    D=$(date +%Y-%m)
    F="rpi253-speedtest-${D}.csv"
    R=$(speedtest-cli --secure --csv)
    echo "${R}" | tee -a "${F}" > /dev/null 2>&1

    git add "${F}"
    git commit -m "chore: add by run.sh."
    git push origin main
}

main
