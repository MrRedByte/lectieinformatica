#include <iostream>
using namespace std;

int main() {
    int n = 0, produs = 1, copieN;

    copieN = n;

    while(n != 0) {
        produs *= n % 10;
        n /= 10;
    }

    cout << "Rezultat produsul cifrelor while: " << produs << '\n';

    produs = 1;
    n = copieN;
    do {
        produs *= n % 10;
        n /= 10;
    } while(n != 0);

    cout << "Rezultat produsul cifrelor do-while: " << produs << '\n';

    return 0;
}