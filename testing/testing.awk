@include "fmt/print.awk"
@include "log/print.awk"

function assert(test, msg,      count, ok, ng) {
    if (test) {
        logger("SUCCESS", msg ? msg : "test")
    } else {
        logger("ERROR",   msg ? msg : "test")
    }
}
