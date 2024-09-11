#include <string>
#include "nested.h"

inline std::string func ()
{
  return "calling nested() from func(): " + nested();
}

