import 'dart:io';
// this program prompts the user to input five numbers, stores them in a list,
// and determines the largest number from the list.

void main() {
  int i = 0;
  int largestNumber = 0;
  List<int> numbers = [];

  while (i < 5) {
    print('Enter a number:');
    String? input = stdin.readLineSync();
    int? number = int.tryParse(input ?? '');

    if (number != null) {
      numbers.add(number); 
      i++;
    } else {
      print('Invalid number. Please try again.');
    }
  }

  
  for (int index = 0; index < numbers.length; index++) {
    if (numbers[index] > largestNumber) {
      largestNumber = numbers[index];
    }
  }

  print('The largest number in the list is: $largestNumber');
}
