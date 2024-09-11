#include <iostream>

int main (int argc, char* argv[])
{
  if (argc < 2) {
    std::cerr << "not enough arguments" << std::endl;
    return 1;
  }

  std::cout << "hello " << argv[1] << std::endl;
  return 0;
}
