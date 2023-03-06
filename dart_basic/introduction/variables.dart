void main() {
  //Variables
  final name = 'Md Mobin';
  const age = 21;
  // variable with type
  String address = 'Delhi, India';
  int phoneNumber = 123456789;
  double height = 5.5;
  bool isMarried = false;
  // Map
  Map<String, dynamic> person = {
    'name': name,
    'age': age,
    'address': address,
    'phoneNumber': phoneNumber,
    'height': height,
    'isMarried': isMarried
  };

  List<Map<String, dynamic>> persons = [];
  persons.add(person);
  //add all the persons
  // persons.addAll([persons]);

  //.. operator
  List<Map<String, dynamic>> persons2 = [
    {
      'name': name,
      'age': age,
      'address': address,
      'phoneNumber': phoneNumber,
      'height': height,
      'isMarried': isMarried
    },
    {
      'name': name,
      'age': age,
      'address': address,
      'phoneNumber': phoneNumber,
      'height': height,
      'isMarried': isMarried
    }
  ];
  persons2 = [...persons2, ...persons];
}
