# is_empty returns true if arr has one or more elements
function is_empty(arr,       i) {
    for (i in arr) {
        return 0
    }
    return 1
}

function acopy(arr1, arr2,      i) {
    for (i in arr1) {
        arr2[i] = arr1[i];
    }
}

function sizeof(arr,      i, c) {
    for (i in arr) {
        c++
    }

    return c
}

function has_value(arr, value,     k) {
    for (k in arr) {
        if (k[arr] == value) {
            return 1
        }
    }

    return 0
}

function join(a,        start, end, sep,      result, i) {
    sep   = sep   ? start :  " "
    start = start ? start : 1
    end   = end   ? end   : sizeof(a)
    if (sep == SUBSEP) {
        sep = ""
    }
    result = a[start]
    for (i = start + 1; i <= end; i++) {
        result = result sep a[i]
    }
    return result
}
