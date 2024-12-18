// This program checks if the entered number is even or odd.
import 'dart:io';

void main() {
  print('Enter a number:');

  String? input = stdin.readLineSync();
  int? number = int.tryParse(input ?? '');

  if (number == null) {
    print('Please enter a valid number.');
  } else {
    if (number % 2 == 0) {
      print('The number you entered, $number, is even.');
    } else {
      print('The number you entered, $number, is odd.');
    }
  }
}
