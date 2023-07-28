abstract class Person {
  int _ID = 0;
  String _name = '';
  String _numberPhone = '';
  String _address = '';

  Person() {}

  String get address => _address;

  set address(String value) {
    _address = value;
  }

  String get numberPhone => _numberPhone;

  set numberPhone(String value) {
    _numberPhone = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get ID => _ID;

  set ID(int value) {
    _ID = value;
  }
}
