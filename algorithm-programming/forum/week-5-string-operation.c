/*
 *  Nama: Ahmad Syauqi
 *  NIM: 2602298361
 *  Compiler: onlinegdb.com
 */

  #include <stdio.h>
  #include <string.h>

  int main() {
    char sentence[255];
    char formatted_sentence[255];

    int formatted_sentence_index = 0;

    printf("masukan kalimat: ");
    fgets(sentence, 255, stdin);

    int i;
    for(i = 0; i < strlen(sentence); i++) {
      // jika sentence[i] adalah huruf vokal dan spasi
      if (
        sentence[i] == 'A' || sentence[i] == 'a' ||
        sentence[i] == 'I' || sentence[i] == 'i' ||
        sentence[i] == 'U' || sentence[i] == 'u' ||
        sentence[i] == 'E' || sentence[i] == 'e' ||
        sentence[i] == 'O' || sentence[i] == 'o' ||
        sentence[i] == ' '
      ) {
        // lanjut ke iterasi selanjutnya
        continue;
      } else {
        // masukan karakter
        formatted_sentence[formatted_sentence_index] = sentence[i];
        formatted_sentence_index++;

        // tambahkan space
        formatted_sentence[formatted_sentence_index] = ' ';
        formatted_sentence_index++;
      }
    }

    printf("hasil: %s", formatted_sentence);

    return 0;
  }