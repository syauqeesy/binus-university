#include <stdio.h>

int main() {
  float price;
  float final_price;
  float discount;

  printf("masukan harga: ");
  scanf_s("%f", &price);

  if (price < 200000) {
    final_price = price;
    discount = 0;
  } else if (price >= 200000 && price < 250000) {
    final_price = price - price * .05;
    discount = price * .05;
  } else if (price >= 250000 && price < 300000) {
    final_price = price - price * .1;
    discount = price * .1;
  } else if (price >= 300000 && price <= 350000) {
    final_price = price - price * .15;
    discount = price * .15;
  }

  printf("harga: %f", price);
  printf("\n");
  printf("harga setelah diskon: %f", final_price);
  printf("\n");
  printf("diskon: %f", discount);

  return 0;
}
