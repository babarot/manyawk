@include "testing/testing.awk"
@include "time/time.awk"

BEGIN {
    fail += assert(match(time(),/[0-9]+\/[01][0-9]\/[0-3][0-9] [0-9]+:[0-9]+:[0-9]+/), "time() returns current time.")
}

@include "fmt/print.awk"
BEGIN {
    if (fail > 0) {
        die("Error")
    }
}
