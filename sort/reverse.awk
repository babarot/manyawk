@include "array/array.awk"

function reverse(arr,      i, t) {
    # count arr length
    c = sizeof(arr)

    # swap
    for (i in arr) {
        t[i] = arr[c--]
    }

    # redeclare
    for (i in arr) {
        arr[i] = t[i]
    }
}
