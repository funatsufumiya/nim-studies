{.emit:"""
#include "test.h"
""".}

{.compile: "cpp_src/test.cpp".}

proc test(s: cstring) {.importcpp: "test(@)".}

test("hello")