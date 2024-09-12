#include "other/other.h"
#include "other/nested_other.h"

std::string other ()
{
  return "output of nested_other(): " + nested_other();
}
