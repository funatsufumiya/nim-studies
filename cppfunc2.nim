## nim c -b:cpp -r cppfunc2.nim

{.push header:"<iostream>".}

proc printcpp(x: cstring) {.importcpp: "std::cout << @ << std::endl".}

{.pop.}



printcpp("hello from cpp!")