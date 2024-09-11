#include <iostream>
#include "func/func.h"
#include "other/other.h"

int main (int argc, char* argv[])
{
  std::cout << "from two, func produces: " << func() << std::endl;
  std::cout << "from two, other produces: " << other() << std::endl;
  return 0;
}
