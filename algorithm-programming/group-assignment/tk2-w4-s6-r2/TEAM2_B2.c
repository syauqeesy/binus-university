#include <stdio.h>

int main() {
  int a = 4;
  int b = 2;

  printf("Sebelum pertukaran nilai, A = %d dan B = %d", a, b);
  printf("\n");

  // Menggunakan variable untuk menyimpan sementara nilai yang akan di tukar
  int temp_b;

  temp_b = b;
  b = a;
  a = temp_b;

  printf("setelah pertukaran nilai, A = %d dan B = %d", a, b);

  return 0;
}
