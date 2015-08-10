#!/usr/bin/env gawk -f

@include "path/filepath.awk"

BEGIN {
    if (isabs("/path/to/dir")) {
        print basename("/path/to/dir")
    }
}
