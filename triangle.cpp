#include <iostream>
#include <vector>
#include "triangle.h"

void print_pascals_triangle(int rows) {
    vector<int> row_values; 

    for (int row = 0; row < rows; ++row) {
        vector<int> new_row = row_values;
        new_row.push_back(1);

        for (int c = 1; c < new_row.size()-1; ++c) 
            new_row.at(c) = row_values.at(c-1) + row_values.at(c);

        row_values = new_row;

        print_row(row_values);
    }
}

void print_row(vector<int> row_values) {
    for (int value : row_values)
        cout << value << " ";

    cout << endl;
}