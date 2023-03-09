/*
 *  Nama: Ahmad Syauqi
 *  NIM: 2602298361
 *  Compiler: clang v15.0.1 windows
 */

#include <stdio.h>

int main()
{
  int numOfSequence;
  int multiplier;

  printf("masukan jumlah bilangan: ");
  scanf("%d", &numOfSequence);

  printf("masukan kelipatan: ");
  scanf("%d", &multiplier);

  int i;
  for(i = 1; i <= numOfSequence; i++) {
    printf("%d ", i * multiplier);
  }

  return 0;
}