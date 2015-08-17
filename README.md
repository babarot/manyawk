# Many AWK

[![](https://img.shields.io/travis/b4b4r07/manyawk.svg?style=flat-square)][travis]
[![](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)][license]
![](https://img.shields.io/badge/AWK-gawk-orange.svg?style=flat-square)

[travis]: https://travis-ci.org/b4b4r07/manyawk
[license]: http://b4b4r07.mit-license.org

:monkey: manyawk is the AWK library that provides many comprehensive AWK utility functions.

## Description

This manyawk library structure is inspired by [Golang packages](https://golang.org/pkg/) structure.

 - [array](https://github.com/b4b4r07/manyawk/tree/master/array)
 - [fmt](https://github.com/b4b4r07/manyawk/tree/master/fmt)
 - [log](https://github.com/b4b4r07/manyawk/tree/master/log)
 - [math](https://github.com/b4b4r07/manyawk/tree/master/math)
 - [path](https://github.com/b4b4r07/manyawk/tree/master/path)
 - [sort](https://github.com/b4b4r07/manyawk/tree/master/sort)
 - [strings](https://github.com/b4b4r07/manyawk/tree/master/strings)
 - [testing](https://github.com/b4b4r07/manyawk/tree/master/testing)
 - [time](https://github.com/b4b4r07/manyawk/tree/master/time)

## Usage

You'll need to set the [AWKPATH](https://www.gnu.org/software/gawk/manual/html_node/AWKPATH-Variable.html#AWKPATH-Variable) environment variable to this library directory root when using manyawk.

```console
$ export AWKPATH=$PWD  # this library
$ echo $AWKPATH
/path/to/manyawk
```

## How to write script

You must load modules from manyawk you want to use and add `@include "module/module.awk"` to your awk script.

```awk
#!/usr/bin/env gawk -f

@include "string/leven.awk"

BEGIN {
    str = ARGV[1]
    subs = ARGV[2]
    printf("%.4f %\n", (1 - leven_dist(str, subs) / (length(str) + length(subs))) * 100)
}
```

To save the awk script above as `leven_dist.awk`, and to run:

```console
$ AWKPATH=. awk -f leven_dist.awk "awk is fun" "gawk is fun"
95.2381 %
```

## License

[MIT](http://b4b4r07.mit-license.org) (c) BABAROT (a.k.a. b4b4r07)
