{.emit:"""
#include "test.h"
""".}

proc test(s: cstring) {.importcpp: "test(@)".}

test("hello")