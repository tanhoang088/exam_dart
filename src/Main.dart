import 'dart:io';

import 'MainFunction.dart';
import 'model/Person.dart';
import 'model/Student.dart';
import 'model/Teacher.dart';

void main() {
  var listPerson = <Person>[];
  late int choice;
  while (true) {
    printMenu();
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        {
          Teacher teacher = new Teacher();
          listPerson.add(teacher.input());
          break;
        }
      case 2:
        {
          Student student = new Student();
          listPerson.add(student.input());
          break;
        }
      case 3:
        {
          listPerson.forEach((element) {
            if (element is Student) {
              print(element.showStudent());
            }
          });
          break;
        }
      case 4:
        {
          listPerson.forEach((element) {
            if (element is Teacher) {
              print(element.showTeacher());
            }
          });
          break;
        }
      case 5:
        {
          search(listPerson);
          break;
        }
      case 6:
        {
          sortStudent(listPerson);
          break;
        }
      case 7:
        {
          sortTeacher(listPerson);
          break;
        }
      case 8:
        {
          printSalary(listPerson);
          break;
        }
      case 9:
        exit(0);
    }
  }
}


