#include <iostream>
#include <string>
using namespace std;

class listGoods
{
protected:  
    string name;
    double weight;
    double price;
    int quantity;
public:
    listGoods(string n, double w, double p, int q) : name(n), weight(w), price(p), quantity(q) {}

};

class SpecProduct : protected listGoods {
private:
    string manufacturer;
    string category;
    string expiryDate;
public:

    SpecProduct(string n, double w, double p, int q, string m, string c, string e) : listGoods(n, w, p, q), manufacturer(m), category(c), expiryDate(e) {}

    void print()
    {
        cout << "Name: " << name << endl;
        cout << "Weight: " << weight << endl;
        cout << "Price: " << price << endl;
        cout << "Quantity: " << quantity << endl;
        cout << "Manufacturer: " << manufacturer << endl;
        cout << "Category: " << category << endl;
        cout << "ExpiryDate: " << expiryDate << endl;
    }

};

int main() {
    SpecProduct a("Apple", 100, 2.5, 10, "Apple Inc.", "Fruits", "2024-12-31");
    a.print();
}