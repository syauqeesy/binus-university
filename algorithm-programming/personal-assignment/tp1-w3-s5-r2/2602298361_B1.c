#include <stdio.h>

int main() {
  float a;
  float b;
  float c;
  float d;

  float result_a;
  float result_b;

  printf("masukan A: ");
  scanf_s("%f", &a);

  printf("masukan B: ");
  scanf_s("%f", &b);

  printf("masukan C: ");
  scanf_s("%f", &c);

  printf("masukan D: ");
  scanf_s("%f", &d);

  result_a = a + b - c;
  result_b = a * ((b - c) / d);

  printf("A + B - C = %f", result_a);
  printf("\n");
  printf("A * ((B - C) / D)= %f", result_b);

  return 0;
}
