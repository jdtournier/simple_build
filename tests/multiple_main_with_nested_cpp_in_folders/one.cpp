#include <iostream>
#include "func/func.h"
#include "other/other.h"

int main (int argc, char* argv[])
{
  std::cout << "from one, func() produces: " << func() << std::endl;
  std::cout << "from one, other() produces: " << other() << std::endl;
  return 0;
}
