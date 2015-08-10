#!/usr/bin/env gawk -f

@include "path/filepath.awk"

BEGIN {
    if (is_abs("/path/to/dir")) {
        print basename("/path/to/dir")
    }
}
