import 'dart:io';

import 'Person.dart';

class Student extends Person {
  String _batch = '';
  double _mark1 = 0;
  double _mark2 = 0;

  Student();

  double get mark2 => _mark2;

  set mark2(double value) {
    _mark2 = value;
  }

  double get mark1 => _mark1;

  set mark1(double value) {
    _mark1 = value;
  }

  String get batch => _batch;

  set batch(String value) {
    _batch = value;
  }

  double getAvgMark() {
    return (mark1 + mark2) / 2;
  }

  Student input() {
    Student student = Student();
    print('Input Student ID: ');
    student.ID = int.parse(stdin.readLineSync()!);
    print('Input Student name: ');
    student.name = stdin.readLineSync()!;
    print('Input Student phone number: ');
    student.numberPhone = stdin.readLineSync()!;
    print('Input Student address: ');
    student.address = stdin.readLineSync()!;
    print('Input Student batch: ');
    student.batch = stdin.readLineSync()!;
    print('Input Student first mark:');
    student.mark1 = double.parse(stdin.readLineSync()!);
    print('Input Student second mark:');
    student.mark2 = double.parse(stdin.readLineSync()!);
    return student;
  }

  String showStudent() {
    return ('STUDENT: ID: $ID | '
        'Name: $name | '
        'Phone number: $numberPhone | '
        'Address: $address | '
        'Batch: $batch | '
        'First Mark: $mark1 | '
        'Second Mark: $mark2 | '
        'Average Mark: ${this.getAvgMark()}');
  }
}
