#!/usr/bin/env gawk -f

@include "string/leven.awk"

BEGIN {
    string = ARGV[1]
    substring = ARGV[2]
    printf("%.4f %\n", (1 - leven_dist(string, substring) / (length(string) + length(substring))) * 100)
}
