#!/bin/sh

cat rpi253-speedtest-*.csv | sed 's/"[^"]*"//g' | awk -F, '{if ($7 < 80000000 || $8 < 80000000) printf("%s\t%10d\t%10d\n", $4, $7, $8)}'
