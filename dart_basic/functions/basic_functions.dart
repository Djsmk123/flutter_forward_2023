// syntax
// data_type function_name (parameter1, parameter2, parameter3, ...) {
//   // function body
//   return value;
// }

void Table(i) {
  for (int j = 1; j <= 10; j++) {
    print('$i * $j = ${i * j}');
  }
}

void main(List<String> args) {
  Table(5);
}
