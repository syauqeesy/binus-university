#include <stdio.h>

int main() {
  int n;
  int i;
  int search;
  int found = 0;

  printf("masukan jumlah elemen array: ");
  scanf("%d", &n);

  int numbers[n];

  printf("masukan angka untuk setiap elemen array:\n");
  for(i = 0; i < n; i++) {
    scanf("%d", &numbers[i]);
  }

  printf("masukan angka yang ingin dicari: ");
  scanf("%d", &search);

  for(i=0; i<n-1; i++) {
    int min_idx = i;

    for(int j = i + 1; j < n; j++) {
      if(numbers[j] < numbers[min_idx]) {
        min_idx = j;
      }
    }

    int temp = numbers[i];
    numbers[i] = numbers[min_idx];
    numbers[min_idx] = temp;
  }

  int start = 0;
  int end = n - 1;
  int mid;

  while(start <= end) {
    mid = (start + end) / 2;

    if(numbers[mid] == search) {
      found = 1;
      break;
    } else if(numbers[mid] < search) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }

  if(found) {
    printf("angka ditemukan pada index %d\n", mid);
  } else {
    printf("angka tidak ditemukan\n");
  }

  return 0;
}
