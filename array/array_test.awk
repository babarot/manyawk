#!/usr/bin/env gawk -f

@include "testing/testing.awk"
@include "array/array.awk"

# is_empty
BEGIN {
    fail += assert(is_empty(arr), "is_empty returns true")
    arr[1] = "val"
    fail += assert(!is_empty(arr), "is_empty returns false")
    clear(arr)
}

# clear
BEGIN {
    arr[1] = "val"
    fail += assert(!is_empty(arr), "arr exists")
    clear(arr)
    fail += assert(is_empty(arr), "arr does not exist")
}

# sizeof
BEGIN {
    arr[1] = "one"
    arr[2] = "two"
    fail += assert(sizeof(arr) == 2, "arr has two elements")
    clear(arr)
}

# equals
BEGIN {
    arr1[1] = "one"
    arr1[2] = "two"
    arr2[1] = "one"
    arr2[2] = "two"
    fail += assert(equals(arr1, arr2), "equals returns true")
    clear(arr1)
    clear(arr2)

    arr1[1] = "one"
    arr1[2] = "two"
    arr2[1] = "one"
    fail += assert(!equals(arr1, arr2), "equals returns false")
    clear(arr1)
    clear(arr2)
}

# acopy
BEGIN {
    arr1[1] = "one"
    arr1[2] = "two"
    acopy(arr1, arr2)
    fail += assert(equals(arr1, arr2), "arr equals to arr2")
    clear(arr1)
    clear(arr2)
}

# join
BEGIN {
    arr[1] = "one"
    arr[2] = "two"
    fail += assert(join(arr) == "one two", "arr 'one,two' turns into 'one two'")
    clear(arr)
}

# has_value
BEGIN {
    arr["key"] = "val"
    fail += assert(has_value(arr, "val"), "arr has val value")
}

@include "fmt/print.awk"
BEGIN {
    if (fail > 0) {
        die("Error")
    }
}
