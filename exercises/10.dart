import 'dart:io';

void main() {
  List<int> lista = [];
  int i = 0;
  while (i < 5) {
    print('Enter the number you want to add to the list:');
    String? entrada = stdin.readLineSync();
    int? number = int.tryParse(entrada ?? '');

    if (number == null || number < 0) {
      print('Invalid input. Please try again.');
    } else {
      lista.add(number);
      i++;
    }
  }

  print('Your list: $lista');

  print('Now enter the number you want to remove from the list:');
  String? entrada2 = stdin.readLineSync();
  int? numeroBuscar = int.tryParse(entrada2 ?? '');

  if (numeroBuscar != null) {
    if (lista.contains(numeroBuscar)) {
      lista.remove(numeroBuscar);
      print('The number was removed successfully.');
    } else {
      print('This number does not exist in the list.');
    }
  } else {
    print('Invalid input. Could not remove the number.');
  }

  
  print('The updated list: $lista');
}
