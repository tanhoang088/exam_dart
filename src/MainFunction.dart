import 'dart:io';

import 'model/Person.dart';
import 'model/Student.dart';
import 'model/Teacher.dart';

void search(List<Person> list) {
  var listFilter = <Person>[];
  print('Input the name you want to search: ');
  String nameSearch = stdin.readLineSync()!;
  list.forEach((element) {
    if (nameSearch.compareTo(element.name) == 0) {
      listFilter.add(element);
    }
  });
  listFilter.forEach((element) {
    if (element is Teacher) {
      print(element.showTeacher());
    } else if (element is Student) {
      print(element.showStudent());
    }
  });
}

void sortStudent(List<Person> list) {
  var listStudent = <Student>[];
  list.forEach((element) {
    if (element is Student) {
      listStudent.add(element);
    }
  });
  listStudent.sort((o1, o2) {
    return (o1.name).compareTo(o2.name);
  });
  print('Sorted list of Student: ');
  listStudent.forEach((element) {
    print(element.showStudent());
  });
}

void sortTeacher(List<Person> list) {
  var listTeacher = <Teacher>[];
  list.forEach((element) {
    if (element is Teacher) {
      listTeacher.add(element);
    }
  });
  listTeacher.sort((o1, o2) {
    return (o1.name).compareTo(o2.name);
  });
  print('Sorted list of Teacher: ');
  listTeacher.forEach((element) {
    print(element.showTeacher());
  });
}

void printSalary(List<Person> list) {
  double totalSalary = 0;
  print('List of Salary: ');
  list.forEach((element) {
    if (element is Teacher) {
      print('Name: ${element.name} | Salary: ${element.getSalary()}');
      totalSalary += element.getSalary();
    }
  });
  print('\nTotal salary: $totalSalary');
}

void printMenu() {
  print('\nMENU: ');
  print('1. Input teacher: ');
  print('2. Input student: ');
  print('3. Show all student: ');
  print('4. Show all teacher: ');
  print('5. Search: ');
  print('6. Print list of Student sorted: ');
  print('7. Print list of Teacher sorted: ');
  print('8. Print total salary of teachers');
  print('9. Exit!');
}