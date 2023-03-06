//syntax in Dart
// class ClassName {
//   // class body
// }
//

class Person {
  //constructor
  // with named parameters
  Person({required this.name, required this.age});
  //with positional parameters
  // Person(this.name, this.age);
  String name;
  int age;
  void display() {
    print('Name: $name, Age: $age');
  }

  //getter
  String get getName => name;
  String get getAge => age.toString();
  //setter
  set setName(String name) => this.name = name;
  set setAge(int age) => this.age = age;
}

void main() {
  //create object
  //with named parameters
  Person person = Person(name: 'John', age: 20);
  //with positional parameters
  // Person person = Person('John', 20);
  person.display();
  //update data using setter
  person.setAge = 21;
  person.setName = 'John Smith';
  //display updated data using getter
  print('updated data\nName: ${person.getName}, Age: ${person.getAge}');
}
