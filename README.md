
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

#### Invoking the build script

Make sure your working directory is the folder containing your code, then
simply type `build`. The default action is to build the executables (i.e.
compile the .cpp files and link the resulting objects).

The `build` script also accepts these special commands as the first
(non-optional) argument:

- `help`:  print this help page
- `run`:   build and if successful, run the resulting executable, passing any
           remaining arguments to the executable. Note that if the projet
           includes multiple executables, each executable will be invoked in
           turn with the arguments provided.
- `clean`: remove all files (the executable and all objects).

The `build` script also accepts the following options (when used with the
'run' command, these should appear before the 'run' keyword):

- `-debug`:   create code suitable for debugging (best to run `build clean`
              beforehand to clear out any optimised temporaries).
- `-verbose`: print out additional information about what the script is doing,
              including the executables detected, each intermediate file's
              dependencies, whether why each file needs to be updated, and why.

#### Customising the build

If you need to override the default settings (compiler executable, provide
non-default or additional include locations, etc), place those settings in the
`settings.sh` file. An example such file is provided in the
`settings_example.sh`; you can simply copy this file and name it `settings.sh`,
modify as required, and invoke `build` again.

