/*
 *  Nama: Ahmad Syauqi
 *  NIM: 2602298361
 *  Compiler: clang v15.0.1 windows
 */

#include <stdio.h>

int main() {
  char words[] = "Bina Nusantara";

  int characterCount = 0;
  int vowelCount = 0;
  int consonantCount = 0;

  // hitung jumlah karakter pada kalimat
  for (int i=0; words[i]; i++) { // lakukan loop selama words[i] tidak kosong
    characterCount++; // hitung sebagai karakter

    // cek apakah karakter tersebut adalah huruf vokal
    if (
      words[i] == 'a' || words[i] == 'A' ||
      words[i] == 'i' || words[i] == 'I' ||
      words[i] == 'u' || words[i] == 'U' ||
      words[i] == 'e' || words[i] == 'E' ||
      words[i] == 'o' || words[i] == 'O'
    ) {
      vowelCount++; // hitung sebagai karakter
    } else if ( // jika tidak dan karakter tersebut adalah alfabet hitung sebagai huruf konsonan
      (words[i] >= 'a' && words[i] <= 'z') || (words[i] >= 'A' && words[i] <= 'Z')
    ) {
      consonantCount++;
    }
  }



  printf("panjang kalimat: %d", characterCount);
  printf("\n");
  printf("jumlah huruf vokal: %d", vowelCount);
  printf("\n");
  printf("jumlah huruf konsonan: %d", consonantCount);

  return 0;
}
