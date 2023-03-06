//null safety is a feature that helps you write null-safe code that avoids runtime null reference errors by checking for null values before using them.

class Person {
  final String name;
  final int? age;
  final String? address;
  final String? profilePic;
  final String? phone;
  final String id;

  Person(
      {required this.name,
      this.age,
      this.address,
      this.profilePic,
      this.phone,
      required this.id});
  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
        'address': address,
        'profilePic': profilePic,
        'phone': phone,
        'id': id,
      };
}

void main() {
  Person person1 = Person(name: 'John', age: null, id: "1");
  Person person2 = Person(name: 'John 2', id: "2", address: "New York");
  Person person3 = Person(name: 'John 3', id: "3", phone: "1234567890");
  Person person4 =
      Person(name: 'John 4', id: "4", profilePic: "https://www.google.com");
  print(person1.toJson());
  print(person2.toJson());
  print(person3.toJson());
  print(person4.toJson());

  //null aware operator
  // (?.), (??), (??=)
  int? x;
  int? y = 10;
  int? z;
  //if z is null then y will be assigned to x
  z ??= y;
  print(z);
  // ?. evaluates to null if the object is null
  print(x?.isEven);
  //other option !. will throw an exception if the object is null
  try {
    print(x!.isEven);
  } catch (e) {
    print(e);
  }

  print(x ?? "x is null");
}
