#include <iostream>
using namespace std;

int main() {
    int rows;

    cout << "Pascal's triangle!" << endl;

    do {
        cout << "Enter how many rows to print (at least 0): ";
        cin >> rows;
    } while(rows < 0);

    print_pascals_triangle(rows);

    return 0;
}