@include "fmt/print.awk"
@include "time/time.awk"

function logger(method, msg,        color) {
    switch (method) {
        case "TITLE":
            color = "Yellow"
            break
        case "ERROR":
            color = "Red"
            break
        case "WARN":
            color = "Red"
            break
        case "INFO":
            color = "Green"
            break
        case "SUCCESS":
            color = "Green"
            break
        default:
            color = "None"
            break
    }
    print "[" colour("Magenta") time() colour("None") "]" colour(color) " " msg colour("None")
}
