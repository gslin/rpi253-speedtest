#!/bin/bash

set -euo pipefail
cd "$(dirname $0)"

main() {
    local R

    R=$(speedtest-cli --secure --csv)
    echo "${R}" | tee -a rpi253-speedtest.csv > /dev/null 2>&1

    git add rpi253-speedtest.csv
    git commit -m "chore: add by run.sh."
    git push origin main
}

main
