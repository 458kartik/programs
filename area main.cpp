#include <iostream>
using namespace std;

void Square();
void Rec();
void Trap();
void Tri();
void Error();

void Square()
{
	
	float a,r;
	cout << "Enter Side";
	cout << "\n=>> ";
	cin >> a;
	r = a * a;
	cout << "Area is " <<r;
}

void Rec()
{
	float b,c,re;
	cout << "Enter Length";
	cout << "\n=>> ";
	cin >> b;
	cout << "Enter Breadth";
	cout << "\n=>> ";
	cin >> c;
	re = b * c;
	cout << "Area is " <<re;
}

void Trap()
{
	float d,e,f,res,resul,result;
	cout << "Enter first parallel side";
	cout << "\n=>> ";
	cin >> d;
	cout << "Enter second parallel side";
	cout << "\n=>> ";
	cin >> e;
	cout << "Enter height";
	cout << "\n=>> ";
	cin >> f;
	res = d + e;
	resul = res * f;
	result = resul / 2;
	cout << "Area is " <<result;
}

void Tri()
{
	float g,h,resu;
	cout << "Enter Height";
	cout << "\n=>> ";
	cin >> g;
	cout << "Enter Base";
	cout << "\n=>> ";
	cin >> h;
	resu = 0.5 * g * h;
	cout << "Area is " <<resu;
}

void Error () 
{
	cout << "Invalid Input!! Please try again....";
}

int main(int argc, char** argv) {
	float menu;
	cout << "Enter 1 for square, 2 for rectangle, 3 for trapezium, 4 for triangle";
	cout << "\n=>> ";
	cin >> menu;
	if (menu == 1){
		Square(); 
	}
	if (menu == 2){
		Rec();
	}
	if (menu == 3){
		Trap();
	}
	if (menu == 4){
		Tri();
	}
	if (menu > 4 or menu < 1){
		Error();
	}
	
	return 0;
}
