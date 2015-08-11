# heapsort
# also unstable, and unlike merge and quicksort it relies on random-access so has poorer cache performance
# advantage over quicksort is that its worst-case same as avg: O(n log n)
# this presentation based on http://dada.perl.it/shootout/heapsort.lua5.html
function heapsort(arr, n,     c, p, t, i) {
    if (!n) {
        n = 1
        while (n in arr) {
            n++
        }
        n--
    }

    # Build heap with greatest element at top
    i = int(n/2) + 1
    while (1) {
        if (i > 1) {
            i--
            t = arr[i]
        } else {
            t = arr[n]
            arr[n] = arr[1]
            n--
            if (n == 1) {
                arr[1] = t
                return
            }
        }
        for (p = i; (c = 2*p) <= n; p = c) {
            if ((c < n) && (arr[c] < arr[c+1])) {
                c++
            }
            if (t < arr[c]) {
                arr[p] = arr[c]
            } else {
                break
            }
        }
        arr[p] = t
    }
}
