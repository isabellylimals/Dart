import 'dart:io';

void main() {
  List<int> numbers = [];
  print('Enter the number of elements you want to add to the list:');
  String? input = stdin.readLineSync();
  int? count = int.tryParse(input ?? '');

  if (count == null || count <= 0) {
    print('Invalid input! Please enter a positive integer.');
    return; 
  }

  for (int i = 0; i < count; i++) {
    print('Enter number (${i + 1}/$count):');
    String? numberInput = stdin.readLineSync();
    int? number = int.tryParse(numberInput ?? '');

    if (number == null) {
      print('Invalid input. Please enter a valid number.');
      i--; 
    } else {
      numbers.add(number);
    }
  }

  print('The numbers added to the list are: $numbers');
}
