import 'dart:io';

import 'Person.dart';

class Teacher extends Person {
  int _numberWorkDay = 0;

  Teacher();

  int get numberWorkDay => _numberWorkDay;

  set numberWorkDay(int value) {
    _numberWorkDay = value;
  }

  double getSalary() {
    return numberWorkDay * 800000;
  }

  Teacher input() {
    Teacher teacher = Teacher();
    print('Input Teacher ID: ');
    teacher.ID = int.parse(stdin.readLineSync()!);
    print('Input Teacher name: ');
    teacher.name = stdin.readLineSync()!;
    print('Input Teacher phone number: ');
    teacher.numberPhone = stdin.readLineSync()!;
    print('Input Teacher address: ');
    teacher.address = stdin.readLineSync()!;
    print('Input work day of Teacher: ');
    teacher.numberWorkDay = int.parse(stdin.readLineSync()!);
    return teacher;
  }

  String showTeacher() {
    return ('TEACHER: ID: $ID | '
        'Name: $name | '
        'Phone number: $numberPhone | '
        'Address: $address | '
        'Work day: $numberWorkDay | '
        'Salary: ${this.getSalary()}');
  }
}
