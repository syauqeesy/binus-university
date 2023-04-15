#include <stdio.h>
#include <string.h>

int menu;

int employee_index = 0;

struct Pegawai {
  char NIP[32];
  char nama[255];
  char alamat[255];
  char nomor_hp[13];
  int  kategori;
  int  jam_kerja;
};

struct Pegawai employees[5];


struct Pegawai entry_pegawai() {
  struct Pegawai employee;

  printf("input data pegawai\n");
  printf("----------------------\n");

  printf("nip: ");
  scanf("%s", employee.NIP);
  printf("\n");
  printf("nama: ");
  scanf("%s", employee.nama);
  printf("\n");
  printf("no hp: ");
  scanf("%s", employee.nomor_hp);
  printf("\n");
  printf("alamat: ");
  scanf("%s", employee.alamat);
  printf("\n");

  printf("1. Staff D1 \n");
  printf("2. Staff D2 \n");
  printf("3. Staff D3 \n");
  printf("kategori (angka): ");
  scanf("%d", &employee.kategori);
  printf("\n");

  employee.jam_kerja = 0;

  return employee;
}

int print_pegawai(struct Pegawai employee) {
  printf("-pegawai- \n");
  printf("nip: %s \n", employee.NIP);
  printf("nama: %s \n", employee.nama);
  printf("no hp: %s \n", employee.nomor_hp);
  printf("alamat: %s \n", employee.alamat);

  char *kategori;
  switch (employee.kategori) {
    case 1:
      kategori = "Staff D1";
      break;
    case 2:
      kategori = "Staff D2";
      break;
    case 3:
      kategori = "Staff D3";
      break;
  }
  printf("kategori: %s \n", kategori);
  printf("jam kerja: %d \n\n", employee.jam_kerja);
  return 0;
}

int main() {
  struct Pegawai employee;
  char NIP[32];
  int i;

  printf("menu: \n");
  printf("1. entry pegawai \n");
  printf("2. entry jam kerja harian \n");
  printf("3. print slip gaji \n");
  printf("4. list pegawai \n");
  printf("5. keluar \n");
  printf("pilih menu: ");
  scanf("%d", &menu);

  if (menu != 5) {
    do {
      switch (menu) {
        case 1:
          if (employee_index > 4) {
            printf("jumlah pegawai sudah maksimal\n");
            main();
          }
          employee = entry_pegawai();
          employees[employee_index] = employee;
          employee_index++;
          main();
          break;
        case 2:
          printf("entry jam kerja pegawai \n");
          printf("------------------------------ \n");
          int jam_kerja;

          printf("nip: ");
          scanf("%s", NIP);
          printf("\n");
          printf("jam kerja: ");
          scanf("%d", &jam_kerja);
          printf("\n");

          for (i = 0; i < employee_index; i++) {
            if (strcmp(employees[i].NIP, NIP) == 0) {
              employees[i].jam_kerja = jam_kerja;
            }
          }
          main();
          break;
        case 3:
          printf("print slip gaji karyawan \n");
          printf("------------------------------ \n");
          int uang_lembur = 20000;

          int gaji_pokok;

          printf("nip: ");
          scanf("%s", NIP);
          printf("\n");

          for (i = 0; i < employee_index; i++) {
            if (strcmp(employees[i].NIP, NIP) == 0) {
              switch (employees[i].kategori) {
                case 1:
                  gaji_pokok = 2500000;
                  break;
                case 2:
                  gaji_pokok = 2000000;
                  break;
                case 3:
                  gaji_pokok = 1500000;
                  break;
              }

              int jam_lembur = employees[i].jam_kerja % 8 > 0 ? employees[i].jam_kerja % 8 : 0;

              printf("-slip gaji-\n");
              printf("gaji pokok: %d \n", gaji_pokok);
              printf("uang lembur: %d \n", (jam_lembur * 20) * uang_lembur);
            }
          }
          main();
          break;
        case 4:
          printf("list pegawai %d \n", employee_index);
          printf("------------------- \n");
          for (i = 0; i < employee_index; i++) {
            print_pegawai(employees[i]);
          }
          main();
          break;
        case 5:
          printf("bye. \n");
          break;
        default:
          printf("menu tidak tersedia\n");
          main();
      }
    } while (menu != 5);
  }

  return 0;
}