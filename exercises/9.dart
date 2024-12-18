import 'dart:io';

// Create a program that asks the user for 5 names, stores them in a list, and displays them in alphabetical order.
void main() {
  List<String> nameList = [];
  int count = 0;

  while (count < 5) {
    print('Enter a name:');
    String? name = stdin.readLineSync();
   
    
    if (name != null && name.isNotEmpty) {
      name= name.toUpperCase(); //lembrar de coloca algumas coisas so depois de verificar se é nulo ou nao
      nameList.add(name);

      count++;
    } else {
      print('Invalid input. Please try again.');
    }
  }
  nameList.sort();

  
  print('Names in alphabetical order:');
  for (String name in nameList) {
    print(name);
  }
}
