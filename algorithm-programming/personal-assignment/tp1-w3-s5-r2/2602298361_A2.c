/*
 *  Dalam contoh dibawah ini saya mendeklarasikan variable `char name[255]`.
 *  Saya ingin mengisi variable name tersebut menggunakan inputan dari console menggunakan scanf_s.
 *  Saat menggunakan function scanf_s saya memasukan dua buah argumen yaitu
 *  formattingnya dan tujuan alamat variable untuk menyimpan string hasil dari inputan menggunakan simbol `&`.
 *  Dalam contoh ini scanf_s akan menggunakan address dari variable name untuk dimasukan string dari inputan.
 *  Jika kita memasukan variable name tanpa simbol `&` didepan kita akan memasukan isi dari variable `name` yaitu string kosong.
 *  Jadi itulah contoh penggunaan pointer dalam bahasa C, yaitu memasukan alamat dari variable ke function scanf_s
 *  untuk nanti dimasukan value dari hasil inputan console.
 */

#include <stdio.h>

int main() {
  char name[255];

  printf("masukan nama anda: ");
  scanf_s("%[^\n]s", &name);

  printf("Halo, %s", name);

  return 0;
}
