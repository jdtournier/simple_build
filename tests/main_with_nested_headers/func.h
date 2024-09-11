#ifndef __FUNC_H__
#define __FUNC_H__

#include <string>
#include "nested.h"

inline std::string func ()
{
  return "calling nested() from func(): " + nested();
}

#endif
