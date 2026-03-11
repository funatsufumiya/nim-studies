proc printf(formatstr: cstring) {.header: "<stdio.h>", importc: "printf", varargs.}

printf("hello %d %d %d\n", 1, 2, 3)
