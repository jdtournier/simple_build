#include "folder/func.h"
#include "folder/nested.h"

std::string func ()
{
  return "output from nested(): " + nested();
}
