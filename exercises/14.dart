//Cars management

import 'dart:io';

void main() {
  Car car = Car(
      currentSpeed: 50.0,
      year: 2020,
      model: 'Truck',
      brand: 'Honda');

  print('The current speed of the car is: ${car.currentSpeed} km/h');
  print('How much do you want to increase the car\'s speed?');

  double value = readDouble('Please enter a valid number to increase the speed:');
  car.accelerate(value);

  print('\nCAR DETAILS:');
  print('Brand: ${car.brand}');
  print('Model: ${car.model}');
  print('Year: ${car.year}');
  print('Current Speed: ${car.currentSpeed} km/h');
}

double readDouble(String errorMessage) {
  while (true) {
    String? input = stdin.readLineSync();
    double? value = double.tryParse(input ?? '');
    if (value != null) {
      return value;
    } else {
      print(errorMessage);
    }
  }
}

class Car {
  String brand;
  String model;
  int year;
  double currentSpeed;

  Car({
    required this.currentSpeed,
    required this.year,
    required this.brand,
    required this.model,
  });

  void accelerate(double value) {
    currentSpeed += value;
    print('The car accelerated. New speed: ${currentSpeed} km/h');
  }
}
