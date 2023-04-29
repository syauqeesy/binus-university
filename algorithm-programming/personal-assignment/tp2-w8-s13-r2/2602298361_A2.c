#include <stdio.h>

int main() {
  struct Siswa {
    char nim[8];
    char name[20];
  };

  struct Siswa siswa1;

  union DataWarga {
    int umur;
    int no_hp;
  };

  union DataWarga warga1;
  warga1.umur = 18;
  printf("%d\n", warga1.umur); // output: 18

  warga1.no_hp = 6278127;
  printf("%d\n", warga1.no_hp); // output: 6278127

  /*
   *  Jika kita mencoba print warga1.umur setelah warga.no_hp di assign dengan data
   *  maka warga.umur akan berisi data yang sama dengan warga.no_hp
   */
  printf("%d\n", warga1.umur);
}