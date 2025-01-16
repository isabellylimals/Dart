import 'dart:io';

void main() {
  Pessoa person = Pessoa();

  print('Enter your name:');
  person.name = stdin.readLineSync();

  print('Enter your age:');
  String? ageInput = stdin.readLineSync();
  person.age = int.tryParse(ageInput ?? '');

  print('Enter your height:');
  String? heightInput = stdin.readLineSync();
  person.height = double.tryParse(heightInput ?? '');

  print('The entered details are:');
  print('Name: ${person.name}');
  print('Age: ${person.age ?? 'Invalid age'}');
  print('Height: ${person.height ?? 'Invalid height'}');
}

class Pessoa {
  String? name;
  int? age;
  double? height;
}
