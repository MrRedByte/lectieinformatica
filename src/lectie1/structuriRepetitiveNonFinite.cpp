#include <iostream>
using namespace std;

int main() {
    int n, sumaCifrelor = 0, copieN = 0;

    n = 125;
    copieN = n;

    // 1. WHILE
    sumaCifrelor = 0;
    n = copieN;

    while(n) {
        sumaCifrelor += n % 10;
        n /= 10;
    }

    cout << "Suma cifrelor folosind WHILE: " << sumaCifrelor << '\n';


    // 2. FOR
    sumaCifrelor = 0;
    n = copieN;

    for(; n; n /= 10) {
        sumaCifrelor += n % 10;
    }

    cout << "Suma cifrelor folosind FOR: " << sumaCifrelor << '\n';


    // 3. DO WHILE
    sumaCifrelor = 0;
    n = copieN;

    if(n != 0) {
        do {
            sumaCifrelor += n % 10;
            n /= 10;
        } while(n);
    }

    cout << "Suma cifrelor folosind DO WHILE: " << sumaCifrelor << '\n';


    // 4. GOTO
    sumaCifrelor = 0;
    n = copieN;

    inceput:
    if(n) {
        sumaCifrelor += n % 10;
        n /= 10;
        goto inceput;
    }

    cout << "Suma cifrelor folosind GOTO: " << sumaCifrelor << '\n';


    // 5. DO WHILE FARA IF
    sumaCifrelor = 0;
    n = copieN;

    do {
        sumaCifrelor += n % 10;
        n /= 10;
    } while(n);

    cout << "Suma cifrelor folosind DO WHILE fara IF: " << sumaCifrelor << '\n';

    return 0;
}