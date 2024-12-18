// This program calculates the average of three grades entered by the user and determines if the user has passed or failed.
import 'dart:io';
void main() {
  int i, sum = 0;
  for (i = 1; i <= 3; i++) {
    print('Enter grade ${i}: ');
    String? gradeStr = stdin.readLineSync();
    int? grade = int.tryParse(gradeStr ?? '');
    if (grade != null) {
      sum += grade;
    }
  }
  calculateAverage(sum);
}
void calculateAverage(int total) {
  double average = total / 3;
  if (average >= 7) {
    print('Congratulations, you passed!');
  } else {
    print('You failed!');
  }
}
