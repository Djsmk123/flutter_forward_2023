///Base class
class IPU {
  final String name;
  final String location;
  final String type;
  final int yearFounded;
  final int numberOfStudents;
  final int numberOfFaculties;
  IPU(this.name, this.location, this.type, this.yearFounded,
      this.numberOfStudents, this.numberOfFaculties);
  void display() {
    print(
        'Name: $name, Location: $location, Type: $type, Year Founded: $yearFounded, Number of Students: $numberOfStudents, Number of Faculties: $numberOfFaculties');
  }
}

//Child class
// Now extend the IPU class to create a new class called ADGITM
class Adgitm extends IPU {
  final String coursesOffered;
  final String placement;
  Adgitm(
      String name,
      String location,
      String type,
      int yearFounded,
      int numberOfStudents,
      int numberOfFaculties,
      this.coursesOffered,
      this.placement)
      : super(name, location, type, yearFounded, numberOfStudents,
            numberOfFaculties);
  void display() {
    //super keyword is used to call the parent class method or members
    super.display();
    print('Courses Offered: $coursesOffered, Placement: $placement');
  }
}

void main() {
  //create object
  Adgitm adgitm = Adgitm('ADGITM', 'Delhi', 'Private', 2002, 1000, 100,
      'B.Tech, M.Tech, MBA', '80%');

  adgitm.display();
}
