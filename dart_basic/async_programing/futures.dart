class Person {
  final String name;
  final int age;
  Person({required this.name, required this.age});
}

Future<Person> getPerson() async {
  //simulate network request
  //As dart is single threaded, it will wait for 2 seconds before executing next line
  // if do not use await, it will return Future<Person> immediately without waiting for 2 seconds
  await Future.delayed(Duration(seconds: 2));
  return Person(name: 'John', age: 20);
}

void main() {
  //getPerson() will return Future<Person>
  //we can use then() to get the value of Future<Person>
  getPerson().then((person) {
    print(person.name);
    print(person.age);
  }).whenComplete(() => print('done'));
}
