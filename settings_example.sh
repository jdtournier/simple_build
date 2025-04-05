# set compiler executable:
cxx=g++

# set default C++ language standard:
std=c++17

# default flags for compiling and linking:
cflags['release']="-Wall -O2 -DNDEBUG"
ldflags['release']=""

# default compiler flags used for debug build:
cflags['debug']="-Wall -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -g"
ldflags['debug']="-g"

# example of additional build config if desired (delete if not necessary):
description['assert']="create optimised build with asserts enabled"
cflags['assert']="-Wall -O2 -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC"
ldflags['assert']=""

# command to run to display compiler output on error:
display_error="less -X"

