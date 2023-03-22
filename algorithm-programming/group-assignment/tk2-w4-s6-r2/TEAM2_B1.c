#include <stdio.h>

int main() {
  int total_detik, jam, menit, detik;

  printf("Masukkan total detik: ");
  scanf("%d", &total_detik);

  jam = total_detik / 3600;
  total_detik %= 3600;

  menit = total_detik / 60;

  detik = total_detik % 60;

  printf("%d detik = %d jam, %d menit, %d detik.", total_detik, jam, menit, detik);

  return 0;
}
