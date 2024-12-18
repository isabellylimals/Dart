// This program asks the user for two numbers and determines which one is greater, or if they are equal.
import 'dart:io';

void main() {
  print('Enter the first number:');
  String? numString1 = stdin.readLineSync();
  int? number1 = int.tryParse(numString1 ?? '');
  if (number1 == null) {
    print('Please enter a valid input.');
    return;
  }

  print('Enter the second number:');
  String? numString2 = stdin.readLineSync();
  int? number2 = int.tryParse(numString2 ?? '');
  if (number2 == null) {
    print('Please enter a valid input.');
    return;
  }

  print('Which number is greater:');
  if (number1 > number2) {
    print('$number1 is greater than $number2');
  } else if (number2 > number1) {
    print('$number2 is greater than $number1');
  } else {
    print('Both numbers are equal.');
  }
}