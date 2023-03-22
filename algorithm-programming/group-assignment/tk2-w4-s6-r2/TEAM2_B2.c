#include <stdio.h>

int main() {
  int a = 4;
  int b = 2;

  // Menggunakan variable untuk menyimpan sementara nilai yang akan di tukar
  printf("menggunakan variable untuk menyimpan sementara");
  printf("\n");
  printf("sebelum pertukaran nilai, A = %d dan B = %d", a, b);
  printf("\n");

  int temp_b;

  temp_b = b;
  b = a;
  a = temp_b;

  printf("setelah pertukaran nilai, A = %d dan B = %d", a, b);
  printf("\n");

  printf("\n");

  // Menggunakan operator matematika
  a = 4;
  b = 2;

  printf("menggunakan operator matematika");
  printf("\n");
  printf("sebelum pertukaran nilai, A = %d dan B = %d", a, b);
  printf("\n");

  a = a + b;
  b = a - b;
  a = a - b;

  printf("setelah pertukaran nilai, A = %d dan B = %d", a, b);
  printf("\n");

  return 0;
}
