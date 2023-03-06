void main(List<String> args) {
  // for loop
  for (int i = 0; i < 5; i++) {
    print(i);
  }
  // while loop
  int j = 0;
  while (j < 5) {
    print(j);
    j++;
  }
  // do while loop
  int k = 0;
  do {
    print(k);
    k++;
  } while (k < 5);
  // for in loop
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print(number);
  }

  // for each loop
  numbers.forEach((number) => print(number));
  // for each loop with index
  numbers.asMap().forEach((index, number) => print('$index: $number'));
}
