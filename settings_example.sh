# set compiler executable:
cxx=g++

# set default C++ language standard:
std=c++20

# default flags for compiling and linking:
# these will be included in all builds (release or debug)
cflags="-Wall"
ldflags=""

# default compiler flags used for optimised build:
# these will be included in addition to cflags/ldflags
cflags_optim="-O2 -DNDEBUG"
ldflags_optim=""

# default compiler flags used for debug build:
# these will be included in addition to cflags/ldflags
cflags_debug="-D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -g"
ldflags_debug="-g"

# command to run to display compiler output on error:
display_error="less -X"
