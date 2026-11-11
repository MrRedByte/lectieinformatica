#include <iostream>
using namespace std;

int main() {
    int a, b, c;
    a = b = c = 0;

    cout << "Compararea a 3 numere scrise de la tastatura\n";

    cout << "Primul numar: ";
    cin >> a;

    cout << "Al doilea numar: ";
    cin >> b;

    cout << "Al treilea numar: ";
    cin >> c;

    // Cu 6 IF-uri
    cout << "\nMetoda cu 6 IF-uri:\n";

    if (a <= b && b <= c)
        cout << a << " " << b << " " << c << '\n';

    if (a <= c && c <= b)
        cout << a << " " << c << " " << b << '\n';

    if (b <= a && a <= c)
        cout << b << " " << a << " " << c << '\n';

    if (b <= c && c <= a)
        cout << b << " " << c << " " << a << '\n';

    if (c <= a && a <= b)
        cout << c << " " << a << " " << b << '\n';

    if (c <= b && b <= a)
        cout << c << " " << b << " " << a << '\n';


    // IF-ELSE
    cout << "\nMetoda IF-ELSE:\n";

    if (a <= b) {
        if (b <= c)
            cout << a << " " << b << " " << c;
        else
            cout << a << " " << c << " " << b;
    }
    else {
        if (a <= c)
            cout << b << " " << a << " " << c;
        else
            cout << b << " " << c << " " << a;
    }

    cout << '\n';


    // IF-ELSE IF-ELSE
    cout << "\nMetoda IF-(ELSE IF)-ELSE:\n";

    if (a <= b && b <= c)
        cout << a << " " << b << " " << c;

    else if (a <= c && c <= b)
        cout << a << " " << c << " " << b;

    else if (b <= a && a <= c)
        cout << b << " " << a << " " << c;

    else if (b <= c && c <= a)
        cout << b << " " << c << " " << a;

    else if (c <= a && a <= b)
        cout << c << " " << a << " " << b;

    else
        cout << c << " " << b << " " << a;

    cout << '\n';


    // IF-ELSE-ELSE-ELSE
    cout << "\nMetoda IF-IF-IF-ELSE-ELSE-ELSE:\n";

    if (a <= b) {
        if (a <= c) {
            if (b <= c) {
                cout << a << " " << b << " " << c;
            }
            else {
                cout << a << " " << c << " " << b;
            }
        }
        else {
            cout << c << " " << a << " " << b;
        }
    }
    else {
        if (b <= c) {
            if (a <= c) {
                cout << b << " " << a << " " << c;
            }
            else {
                cout << b << " " << c << " " << a;
            }
        }
        else {
            cout << c << " " << b << " " << a;
        }
    }

    cout << '\n';

    return 0;
}
