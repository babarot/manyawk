@include "testing/testing.awk"
@include "math/abs.awk"
@include "math/dim.awk"
@include "math/expr.awk"
@include "math/is_num.awk"
@include "math/pow.awk"

# abs
BEGIN {
    fail += assert(abs(2) == 2, "abs(2) is 2.")
    fail += assert(abs(-3) == 3, "abs(-3) is 3.")
}

BEGIN {
    fail += assert(max(2, 3) == 3, "3 is greater than 2.")
    fail += assert(min(2, 3) == 2, "2 is less than 3.")
}

BEGIN {
    fail += assert(floor(2.3) == 2, "floor(2.3) equals to 2.")
    fail += assert(ceil(2.3) == 3, "ceil(2.3) equals to 3.")
    fail += assert(round(2.3) == 2, "round(2) equals to 2.")
}

BEGIN {
    fail += assert(is_num(2), "is_num(2) returns true.")
    fail += assert(is_num("2"), "is_num(\"2\") returns true.")
    fail += assert(!is_num("a"), "is_num(\"a\") returns false.")
}

BEGIN {
    fail += assert(pow(2, 3) == 8, "2**3 equals to 8.")
}

BEGIN {
    if (fail > 0) {
        die("Error")
    }
}
