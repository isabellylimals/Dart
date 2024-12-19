import 'dart:io';
//MAPS
void main() {
  int count = 0;
  Map<int, String> map = {};

  while (count < 5) {
    print('Enter a number:');
    String? input = stdin.readLineSync();
    int? number = int.tryParse(input ?? '');

    if (number == null) {
      print('Invalid input. Please try again.');
    } else {
      print('Now enter a name to associate with this number:');
      String? name = stdin.readLineSync();

      if (name != null && name.isNotEmpty) {
        map[number] = name;
        count++;
      } else {
        print('Invalid name. Please try again.');
      }
    }
  }

  print('The final map is: $map');
}
