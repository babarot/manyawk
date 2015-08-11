@include "fmt/print.awk"
@include "log/print.awk"

function assert(test, msg) {
    if (test) {
        logger("SUCCESS", msg ? msg : "test")
        return 0
    } else {
        logger("ERROR",   msg ? msg : "test")
        return 1
    }
}
