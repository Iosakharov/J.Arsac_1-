#include <iostream>
#include <cctype>
#include <cstdlib>
#include <cmath>

using namespace std;

float card_formula(int x, int y, int z)
{return (((x-1)/13.0 + y - 1)/13 + z - 1)/13;}

float eng_formula(double e)
{	double eng = pow(e + 3.14159, 8);
	return eng - floor(eng);}

int main (int args, char** argv)
{
	std::string helpFlag = "-help";
	std::string helpFlag2 = "-h";
	std::string helpFlag3 = "-?";
	std::string helpFlag4 = "--help";
	std::string CFlag = "-C";
	std::string EFlag = "-E";
 if (args > 1)
	{
		for (int i=1; i < args; i++)
		{if (helpFlag.compare(argv[i]) == 0 ||
			helpFlag2.compare(argv[i]) == 0||
			helpFlag3.compare(argv[i]) == 0||
			helpFlag4.compare(argv[i]) == 0)
			{
					cout << "Эта программа создана для вычисления псевдо-случайного числа \n по книге Жака Арсака \n";
					cout << "Введите -С [int] [int] [int] или -E [float] для получения числа\n";
					return 0;
			}
		if (CFlag.compare(argv[i]) == 0)
			{
			 //	if (isdigit(argv[++i][0])) cout<<'I';
				//if (isdigit(argv[i][1])) cout<<'S';
				int x = atoi (argv[++i]);
				int y = atoi (argv[++i]);
				int z = atoi (argv[++i]);
				cout << x << " " << y << " "<< z << " " << '\n';
				cout << card_formula(x,y,z) << '\n';
			}
		if (EFlag.compare(argv[i]) == 0)
		{
			float e = atof (argv[++i]);
			cout << eng_formula(e) << '\n';
		}
		}

	}
	return 0;
}
