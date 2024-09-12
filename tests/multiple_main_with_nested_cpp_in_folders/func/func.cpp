#include "func/func.h"
#include "func/nested_func.h"

std::string func ()
{
  return "output of nested_func(): " + nested_func();
}
