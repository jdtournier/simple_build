
This is a no-frills script to compile and link small C++ projects. It emulates
what a Makefile might do, based on simple assumptions:

- all code files have a `.cpp` suffix (no restrictions for headers).

- any code file in the top-level folder that defines a `main()` function is
  destined to produce a corresponding executable of the same name (with the
  `.cpp` suffix stripped out).

- *user* headers are `#include`d in inverted commas, while *system* headers are
  `#include`d in angled brackets, i.e. like this:

        // when working out dependencies:
        #include "my_header.h"   // <- user header: will be inspected
        #include <iostream>      // <- system header: will be ignored

  This is important if the script is to work out dependencies correctly: it will
  scan through all *user* headers recursively to work out whether each object is
  up to date relative to the headers it depends on, but ignore all *system*
  headers.

- any additional `cpp` files that need to be compiled and linked with the
  target executable(s) must have a corresponding header file, with the same
  name (but expected suffix for a header file), and this header must be
  `#include`d in another dependency for that executable (header or cpp). Otherwise,
  the corresponding object file will not be included in the list when linking
  the target executable. 

  For example, if `main.cpp` relies on functionality in `utils.cpp`, then the
  `utils.h` header must exist and be `#include`d by `main.cpp` (or one of the other
  already included headers).

#### Invoking the build script

Make sure your working directory is the folder containing your code, then
simply type `build`. The default action is to build the executables (i.e.
compile the .cpp files and link the resulting objects).

The `build` script also accepts these special commands as the first
(non-optional) argument:

- `help`:  print this help page
- `clean`: remove all files (the executable and all objects).

The `build` script also accepts the following options:

- `-debug`:   create code suitable for debugging (when switching between debug
              and regular build, make sure to run `build clean` beforehand to
              clear out all temporary files).
- `-verbose`: print out additional information about what the script is doing,
              including the executables detected, each intermediate file's
              dependencies, whether why each file needs to be updated, and why.

#### Customising the build

Overriding the default compiler (`g++`) can be done by setting the `CXX`
environment variable, e.g.:

    $ CXX=clang++ build

If you need to override the default settings (compiler executable, provide
non-default or additional include locations, etc), place those settings in the
`settings.sh` file. An example such file is provided in the
`settings_example.sh`; you can simply copy this file and name it `settings.sh`,
modify as required, and invoke `build` again.

