#include <stdio.h>

int main() {
  float celsius;
  float fahrenheit;
  float reamur;
  float kelvin;

  printf("masukkan suhu dalam Celsius: ");
  scanf("%f", &celsius);

  fahrenheit = (celsius * 9/5) + 32;
  printf("%.2f celsius = %.2f fahrenheit\n", celsius, fahrenheit); // menggunakan %.2f agar hanya mengambil 2 angka setelah koma

  reamur = (celsius * 4/5);
  printf("%.2f celsius = %.2f reamur\n", celsius, reamur); // menggunakan %.2f agar hanya mengambil 2 angka setelah koma

  kelvin = celsius + 273;
  printf("%.2f celsius = %.2f kelvin\n", celsius, kelvin); // menggunakan %.2f agar hanya mengambil 2 angka setelah koma

  return 0;
}
