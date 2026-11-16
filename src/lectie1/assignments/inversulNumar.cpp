#include <iostream>
using namespace std;

int main() {
    int n, copieN, invers = 0;

    cin >> n;
    copieN = n;

    while(n != 0) {
        invers = invers * 10 + n % 10;
        n /= 10;
    }

    cout << "Inversul numarului " << copieN
         << " este: " << invers;

    return 0;
}

