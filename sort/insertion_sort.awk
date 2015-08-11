# insertion sort arr[1..n]
# stable, O(n^2) but fast for small arrays
function sort(arr, n,      i, j, t) {
    if (!n) {
        n = 1
        while (n in arr) {
            n++
        }
        n--
    }
    for (i = 2; i <= n; i++) {
        t = arr[i]
        for (j = i; j > 1 && arr[j-1] > t; j--) {
            arr[j] = arr[j-1]
        }
        arr[j] = t
    }
}
