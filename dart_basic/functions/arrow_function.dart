//arrow function in dart

var printMsg = (String msg) => print("Hello World $msg");
//with return type

bool isEven(int number) => number % 2 == 0;
void main() {
  printMsg("From Arrow Function");
  print(isEven(10));
}
