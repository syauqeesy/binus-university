#include <stdio.h>

int main() {
  float celsius;
  float fahrenheit;
  float reamur;
  float kelvin;

  printf("masukkan suhu dalam celsius: ");
  scanf("%f", &celsius);

  fahrenheit = (celsius * 9/5) + 32;
  printf("%.2f celsius = %.2f fahrenheit", celsius, fahrenheit); // menggunakan %.2f agar hanya mengambil 2 angka setelah koma
  printf("\n");

  reamur = (celsius * 4/5);
  printf("%.2f celsius = %.2f reamur", celsius, reamur); // menggunakan %.2f agar hanya mengambil 2 angka setelah koma
  printf("\n");

  kelvin = celsius + 273;
  printf("%.2f celsius = %.2f kelvin", celsius, kelvin); // menggunakan %.2f agar hanya mengambil 2 angka setelah koma
  printf("\n");

  return 0;
}
