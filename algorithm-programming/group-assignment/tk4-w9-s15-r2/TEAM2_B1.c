#include <stdio.h>

int main()
{
  int total_uang;
  int jumlah_pecahan_uang;
  int uang;
  int pecahan;
  int jumlah;
  int komisi;

  printf("masukan pecahan uang yang ingin ditukarkan (50000, 100000): ");
  scanf("%d", &uang);

  printf("masukan jumlah pecahan uang yang ingin ditukarkan (1, 2, n): ");
  scanf("%d", &jumlah_pecahan_uang);

  printf("masukan pecahan uang yang diinginkan (10000, 5000, 1000): ");
  scanf("%d", &pecahan);

  for (int i = 1; i <= jumlah_pecahan_uang; i++) {
    jumlah += uang / pecahan;
    total_uang += uang;
  }

  komisi = 0.1 * total_uang;

  printf("uang  %d sebanyak %d lembar ditukar menjadi %d sebanyak %d lembar\n", uang, jumlah_pecahan_uang, pecahan, jumlah);
  printf("komisi: %d\n", komisi);

  return 0;
}
