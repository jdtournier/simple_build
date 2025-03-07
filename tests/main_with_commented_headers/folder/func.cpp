#include "folder/func.h"
#include "folder/nested.h"
/*
#include "bogus2.h"
*/

std::string func ()
{
  return "output from nested(): " + nested();
}
