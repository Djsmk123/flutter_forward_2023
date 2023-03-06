// Abstract class is a class that can not be instantiated. thats mean we can not create object of abstract class. we can only create object of its subclass.
// for example, Shape shape=new Shape(); is not allowed. we can only create object of its subclass.
abstract class Shape {
  double get area;
}

//extends keyword is used to inherit a class
class Circle extends Shape {
  Circle(this.radius);
  final double radius;
  //override keyword is used to override the method of parent class
  @override
  double get area => 3.14 * radius * radius;
}

//extends keyword is used to inherit a class
class Square extends Shape {
  Square(this.side);
  final double side;
  //override keyword is used to override the method of parent class
  @override
  double get area => side * side;
}

void main() {
  final circle = Circle(2);
  final square = Square(2);
  print(circle.area);
  print(square.area);
}
