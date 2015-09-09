@include "testing/testing.awk"
@include "strings/capitalize.awk"
@include "strings/prefix.awk"
@include "strings/leven.awk"
@include "strings/rindex.awk"

BEGIN {
    fail += assert(capitalize("abc") == "Abc", "capitalize(\"abc\") equals to \"Abc\".")
}

BEGIN {
    fail += assert(has_prefix("abc", "a"), "has_prefix(\"abc\", \"a\") returns true.")
}

BEGIN {
    fail += assert(has_suffix("abc", "c"), "has_suffix(\"abc\", \"c\") returns true.")
}

BEGIN {
    fail += assert(leven_dist("abc", "aba") == 1, "leven_dist(\"abc\", \"aba\") equals to 1.")
    fail += assert(leven_dist("abc", "ab") == 1, "leven_dist(\"abc\", \"ab\") equals to 1.")
    fail += assert(leven_dist("abc", "abc") == 0, "leven_dist(\"abc\", \"abc\") equals to 0.")
}

BEGIN {
    fail += assert(last_index("abcabc", "ab") == 4, "last_index(\"abcabc\", \"ab\") equals to 4.")
}

@include "fmt/print.awk"
BEGIN {
    if (fail > 0) {
        die("Error")
    }
}
