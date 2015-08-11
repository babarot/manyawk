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

## License

[MIT](http://b4b4r07.mit-license.org) (c) BABAROT (a.k.a. b4b4r07)
