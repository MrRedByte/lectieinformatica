#include <iostream>
using namespace std;

int main()
{
    int n, divizor = 2;
    cin >> n;

    while(n > 1){
        if(n % divizor == 0){
            cout << divizor << ' ';
            n /= divizor;
        }
        else
            divizor++;
    }

    return 0;
}


