#include <iostream>
using namespace std;

int main() {
    int n, index;

    cin >> n;

    // 1. FOR
    cout << "Folosind FOR:\n";
    for(index = 1; index <= n; index++) {
        cout << index << '\n';
    }

    // 2. WHILE
    cout << "Folosind WHILE:\n";
    index = 1;
    while(index <= n) {
        cout << index << '\n';
        index++;
    }

    // 3. DO WHILE
    cout << "Folosind DO WHILE:\n";
    index = 1;
    if(n >= 1) {
        do {
            cout << index << '\n';
            index++;
        } while(index <= n);
    }

    // 4. GOTO
    cout << "Folosind GOTO:\n";
    index = 1;

    inceput:
    if(index <= n) {
        cout << index << '\n';
        index++;
        goto inceput;
    }

    // 3. DO WHILE 
    cout << "Folosind DO WHILE (fara if):\n";
    index = 1;
    do {
        cout << index << '\n';
        index++;
    } while(index <= n);
    return 0;
}