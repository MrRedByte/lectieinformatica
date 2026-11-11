#include <iostream>
using namespace std;

int main() {
    int n, i;
    bool prim=1;

    cin >> n;

    // 3 metode de implementare

    if(prim) {
        cout << n << " este numar prim.";
    } else {
        cout << n << " nu este numar prim.";
    }

    return 0;
}