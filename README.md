# Many AWK

:monkey: manyawk is the AWK library that provides many comprehensive AWK utility functions.

## Description

This manyawk library structure is inspired by [Golang packages](https://golang.org/pkg/) structure.

 - array
 - fmt
 - log
 - math
 - path
 - sort
 - strings
 - testing
 - time

## Usage

You'll need to set the [AWKPATH](https://www.gnu.org/software/gawk/manual/html_node/AWKPATH-Variable.html#AWKPATH-Variable) environment variable to this library directory root when using manyawk.

```console
$ export AWKPATH=$PWD  # this library
$ echo $AWKPATH
/path/to/manyawk
```

## How to write script



```awk
#!/usr/bin/env gawk -f

@include "string/leven.awk"

BEGIN {
    string = ARGV[1]
    substring = ARGV[2]
    printf("%.4f %\n", (1 - leven_dist(string, substring) / (length(string) + length(substring))) * 100)
}

```

## License

[MIT](http://b4b4r07.mit-license.org) (c) BABAROT (a.k.a. b4b4r07)
