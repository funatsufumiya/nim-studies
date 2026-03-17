## nim c -b:cpp -r cppfunc.nim

{.emit:"""
#include <iostream>
void printcpp(const std::string& str) { std::cout << str << std::endl; }
""".}

proc printcpp(x: cstring) {.importcpp: "printcpp(@)".}

printcpp("hello from cpp!")