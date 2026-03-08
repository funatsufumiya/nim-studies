import std/distros

# Architectures.
if defined(amd64):
  echo "Architecture is x86 64bit"
elif defined(i386):
  echo "Architecture is x86 32bit"
elif defined(arm):
  echo "Architecture is ARM"

# Operating Systems.
if defined(linux):
  echo "Operating System is GNU Linux"
elif defined(windows):
  echo "Operating System is Microsoft Windows"
elif defined(macosx):
  echo "Operating System is Apple OS X"

# Distros.
if detectOs(Ubuntu):
  echo "Distro is Ubuntu"
elif detectOs(ArchLinux):
  echo "Distro is ArchLinux"
elif detectOs(Debian):
  echo "Distro is Debian"
