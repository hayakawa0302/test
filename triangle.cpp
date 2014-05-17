//ŽOŠpŒ`‚ÌŒvŽZ

#include <iostream>
#include <math.h>
#define RadToDec 57.29577951f;
#define DecToRad 0.017453293f;
using namespace std;

void showSelection();
void threeline();
void twoline();
void oneline();

double a;
double b;
double c;
double arga;
double argb;
double argc;
double rada;
double radb;
double radc;

int main()
{
	char choice;

	showSelection();
	cin >> choice;

	while (choice != 'q')
	{
		switch (choice)
		{
		case 'a':
			threeline();
			break;
		case 'b':
			twoline();
			break;
		case 'c':
			oneline();
			break;
		default:
			cout << "‘I‘ðŽˆ‚É‚ ‚è‚Ü‚¹‚ñ.‚à‚¤ˆê“x“ü—Í‚µ‚Ä‚­‚¾‚³‚¢";
			break;
		}
		showSelection();
		cin >> choice;
	}//end while

	cout << "I—¹‚µ‚Ü‚·\n";
	return 0;
}

//‘I‘ð‰æ–Êì¬
void showSelection()
{
	cout << "\n";
	cout << "ŽOŠpŒ`‚ÌŒvŽZ\n";
	cout << "ŽŸ‚©‚ç‘I‚ñ‚Å‚­‚¾‚³‚¢:\n";
	cout << "[a]3•Ó‚©‚ç3Šp‚ð‹‚ß‚é\n";
	cout << "[b]2•Ó‚Æ‚»‚ÌŠÔ‚ÌŠp‚©‚ç‘¼‚Ì•Ó‚ÆŠp‚ð‹‚ß‚é\n";
	cout << "[c]1•Ó‚Æ2‚Â‚ÌŠp‚©‚ç‘¼‚Ì•Ó‚ÆŠp‚ð‹‚ß‚é\n";
	cout << "[q]I—¹\n";
	cout << "\n";
}

//3•Ó‚Ì’l
void threeline()
{
	cout << "3•Ó‚ð‡‚É“ü—Í\n";
	cin >> a;
	cin >> b;
	cin >> c;

	arga = (double)acos((b * b + c * c - a * a) / (2 * b * c)) * RadToDec;
	argb = (double)acos((c * c + a * a - b * b) / (2 * c * a)) * RadToDec;
	argc = (double)acos((a * a + b * b - c * c) / (2 * a * b)) * RadToDec;

	cout << "3Šp‚Ì‘å‚«‚³‚Í" << arga << "," << argb << "," << argc << "‚Å‚·B\n";

}

void twoline()
{
	cout << "2•Ó‚ð‡‚É“ü—Í\n";
	cin >> a;
	cin >> b;
	cout << "ŠÔ‚ÌŠp‚ð“ü—Í";
	cin >> argc;

	radc = argc * DecToRad;

	c = (double)sqrt(a * a + b * b - 2 * a * b * cosf(radc));
	arga = (double)asin(a * sinf(radc) / c) * RadToDec;
	argb = (double)asin(b * sinf(radc) / c) * RadToDec;

	cout << "Žc‚è‚Ì•Ó‚Ì’·‚³‚Í" << c << ",Šp‚Í" << arga << "," << argb << "‚Å‚·B\n";

}

void oneline()
{
	cout << "1•Ó‚ð“ü—Í\n";
	cin >> a;
	cout << "—¼’[‚ÌŠp“ü—Í\n";
	cin >> argb;
	cin >> argc;

	arga = 180 - argb - argc;
	rada = arga *  DecToRad;
	radb = argb *  DecToRad;
	radc = argc *  DecToRad;

	b = a * sinf(radb) / sinf(rada);
	c = a * sinf(radc) / sinf(rada);

	cout << "Žc‚è‚ÌŠp‚Ì‘å‚«‚³‚Í" << arga << ",•Ó‚Ì’·‚³‚Í" << b << "," << c << "‚Å‚·B\n";

}