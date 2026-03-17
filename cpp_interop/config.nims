switch("backend", "cpp")

when defined(windows):
  switch("cc", "vcc")
  switch("passC", "/std:c++17")
  switch("passC", "/utf-8")
  # switch("passC", "/MD")
  
else:
  switch("passC", "-std=c++17")

switch("passC", "-Icpp_src")
switch("passL", "cpp_src/test.cpp")