//Explain: Operators in Dart
void main(List<String> args) {
  //Arithmetic Operators
  int a = 10;
  int b = 5;
  print('a + b = ${a + b}');

  // Relational Operators
  print('a > b = ${a > b}');
  print('a < b = ${a < b}');

  // Logical Operators
  print(a > b && a + b < 20);

  // Bitwise Operators
  print(a & b); // 1010 & 0101 = 0000 = 0
}
