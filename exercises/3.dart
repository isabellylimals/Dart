// This program prints the multiplication table of 10.
import 'dart:io';

void main() {
  print('======= MULTIPLICATION TABLE OF 10 =======');
  tabuada();
}

void tabuada() {
  for (int i = 0; i <= 10; i++) {
    int result = 10 * i;
    print('10 x $i = $result');
  }
}
