# max returns the larger of x or y
function max(x, y) {
    return (x > y ? x : y)
}

# min returns the smaller of x or y
function min(x, y) {
    return (x < y ? x : y)
}

# min3 returns the smaller of x, y or z
function min3(x, y, z,       result) {
    result = x

    if (y < result) {
        result = y
    }

    if (z < result) {
        result = z
    }

    return result
}
