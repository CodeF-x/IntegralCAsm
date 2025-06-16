#include <stdio.h>
typedef double afunc(double);
extern double f1(double a);
extern double f2(double a);
extern double f3(double a);

int root(afunc* f, afunc* g, double a, double b, double eps1) {
	return 0;
}



int main() {
    double inputter;
    scanf("%lf", &inputter);
    double res1 = f1(inputter);
    double res2 = f2(inputter);
    double res3 = f3(inputter);
    printf("Result: %.21f\n", res1);
    printf("Result: %.21f\n", res2);
    printf("Result: %.21f\n", res3);
    return 0;
}