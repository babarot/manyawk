@include "strings/leven.awk"

# similarity returns degree of similarity between two arguments based on levenshtein distance
function similarity(one, two) {
    return sprintf("%f", (1 - leven_dist(one, two) / (length(one) + length(two))) * 100)
}
