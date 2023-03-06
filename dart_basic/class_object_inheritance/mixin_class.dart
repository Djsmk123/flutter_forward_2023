// Topic: Mixin class
mixin Bark {
  void bark() {
    print('Bark');
  }
}

mixin Crwal {
  void crawl() {
    print('Crawl');
  }
}
mixin Fly {
  void fly() {
    print('Fly');
  }
}

class Animal {
  void breathe() {
    print('Breathe');
  }
}

//implmeent multiple mixin with keyword with
class Dog extends Animal with Bark {}

class Bat extends Animal with Fly {}

class Spider extends Animal with Crwal {
  display() {
    print("Spider");
    breathe();
    crawl();
  }
}

void main() {
  Dog dog = Dog();
  dog.breathe();
  dog.bark();
  Bat bat = Bat();
  bat.breathe();
  bat.fly();
  var spider = Spider();
  spider.display();
  //Source
  //https://www.educative.io/answers/what-are-mixins-in-dart
}
