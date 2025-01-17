//Student Gerence

import 'dart:io';

void main() {
  List<Student> students = [];

  while (true) {
    menu();
    print('Choose an option from the menu:');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      print('Enter the student\'s name:');
      String? name = stdin.readLineSync();

      print('Enter the student\'s age:');
      String? inputAge = stdin.readLineSync();
      int? age = int.tryParse(inputAge ?? '');

      print('Enter the student\'s final grade:');
      String? inputGrade = stdin.readLineSync();
      double? finalGrade = double.tryParse(inputGrade ?? '');

      if (name != null && age != null && finalGrade != null) {
        students.add(Student(name: name, age: age, finalGrade: finalGrade));
        print('Student successfully added!');
      } else {
        print('Invalid data. Could not add the student.');
      }
    } else if (choice == '2') {
      print('\nStudent List:');
      if (students.isEmpty) {
        print('No students registered.');
      } else {
        for (var student in students) {
          print(
              'Name: ${student.name}, Age: ${student.age}, Final Grade: ${student.finalGrade}');
        }
      }
    } else if (choice == '3') {
      print('Students with a grade of 7.0:');
      bool found = false;
      for (var student in students) {
        if (student.finalGrade == 7.0) {
          print(
              'Name: ${student.name}, Age: ${student.age}, Final Grade: ${student.finalGrade}');
          found = true;
        }
      }
      if (!found) {
        print('No students with a grade of 7.0 found.');
      }
    } else if (choice == '4') {
      print('Enter the name of the student you want to remove:');
      String? searchName = stdin.readLineSync();
      if (searchName != null) {
        bool removed = false;
        students.removeWhere((student) {
          if (student.name == searchName) {
            removed = true;
            return true;
          }
          return false;
        });

        if (removed) {
          print('Student successfully removed!');
        } else {
          print('Student not found.');
        }
      }
    } else if (choice == '5') {
      print('Exiting the program. Goodbye!');
      break;
    } else {
      print('Invalid option. Try again.');
    }
  }
}

class Student {
  String name;
  int age;
  double finalGrade;

  Student({
    required this.name,
    required this.age,
    required this.finalGrade,
  });
}

void menu() {
  print('\n===== MENU =====');
  print('[1] ADD NEW STUDENT');
  print('[2] DISPLAY STUDENTS');
  print('[3] STUDENTS WITH GRADE 7.0');
  print('[4] REMOVE A STUDENT BY NAME');
  print('[5] EXIT');
}
