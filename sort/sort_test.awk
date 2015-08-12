@include "testing/testing.awk"
@include "sort/insertion_sort.awk"
@include "sort/heapsort.awk"
@include "sort/reverse.awk"

@include "array/array.awk"

BEGIN {
    arr1[1] = "5"
    arr1[2] = "a"
    arr1[3] = "3"
    arr1[4] = "0"
    arr2[1] = "0"
    arr2[2] = "3"
    arr2[3] = "5"
    arr2[4] = "a"
    sort(arr1)
    fail += assert(equals(arr1, arr2), "sort(arr1) is ok.")
    clear(arr1)
    clear(arr2)
}

BEGIN {
    arr1[1] = "5"
    arr1[2] = "a"
    arr1[3] = "3"
    arr1[4] = "0"
    arr2[1] = "0"
    arr2[2] = "3"
    arr2[3] = "5"
    arr2[4] = "a"
    heapsort(arr1)
    fail += assert(equals(arr1, arr2), "heapsort(arr1) is ok.")
    clear(arr1)
    clear(arr2)
}

BEGIN {
    arr1[1] = "5"
    arr1[2] = "a"
    arr1[3] = "3"
    arr1[4] = "0"
    arr2[1] = "0"
    arr2[2] = "3"
    arr2[3] = "a"
    arr2[4] = "5"
    reverse(arr1)
    fail += assert(equals(arr1, arr2), "reverse(arr1) is ok.")
    clear(arr1)
    clear(arr2)
}

@include "fmt/print.awk"
BEGIN {
    if (fail > 0) {
        die("Error")
    }
}
