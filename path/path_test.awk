@include "testing/testing.awk"
@include "path/filepath.awk"

BEGIN {
    fail += assert(dirname("/path/to/dir") == "/path/to", "dirname(/path/to/dir) equals to /path/to.")
}

BEGIN {
    fail += assert(basename("/path/to/dir") == "dir", "basename(/path/to/dir) equals to dir.")
}

BEGIN {
    fail += assert(is_abs("/path/to/dir"), "is_abs(/path/to/dir) returns true.")
    fail += assert(!is_abs("path/to/dir"), "is_abs(path/to/dir) returns false.")
}

@include "fmt/print.awk"
BEGIN {
    if (fail > 0) {
        die("Error")
    }
}
