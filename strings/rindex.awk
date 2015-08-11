# last_index returns the index of the last instance of find in s,
# or 0 if find is not present
function last_index(s, find,       k, ns, nf) {
    ns = length(s)
    nf = length(find)
    for (k = ns+1-nf; k >= 1; k--) {
        if (substr(s, k, nf) == find) {
            return k
        }
    }
    return 0
}
