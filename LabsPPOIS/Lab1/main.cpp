#include <iostream>
#include "SignedFraction.h"

int main() {
    SignedFraction a(3, 4);
    SignedFraction b(2, 3);
    SignedFraction c = a + b;
    std::cout << "a + b = " << static_cast<double>(c) << std::endl;
    return 0;
}
