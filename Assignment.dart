abstract class Role {
  void displayRole();
}

class Person implements Role {
  String _name;
  int _age;
  String _address;

  Person(this._name, this._age, this._address);

  String get name => _name;
  int get age => _age;
  String get address => _address;

  @override
  void displayRole() {
    print("Role: Unknown");
  }
}

class Student extends Person {
  int studentID;
  String grade;
  List<double> scores;

  Student(String name, int age, String address, this.studentID, this.grade,
      this.scores)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double averageScore() {
    double sum = 0.0;
    for (var element in scores) {
      sum += element;
    }
    return sum / scores.length;
  }
}

class Teacher extends Person {
  int teacherID;
  List<String> coursesTaught;

  Teacher(
      String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCoursesTaught() {
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
}

class StudentManagementSystem {
  void main() {
    Student student =
        Student("John Doe", 20, "123 Main St", 123, "A", [90, 85, 82]);
    Teacher teacher = Teacher(
        "Mrs. Smith", 35, "456 Oak St", 1234, ["Math", "English", "Bangla"]);

    print("\nStudent Information:");
    student.displayRole();
    print("Name: ${student.name}");
    print("Age: ${student.age}");
    print("Address: ${student.address}");
    print("Average Score: ${student.averageScore().toStringAsFixed(2)}");

    print("\nTeacher Information:");
    teacher.displayRole();
    print("Name: ${teacher.name}");
    print("Age: ${teacher.age}");
    print("Address: ${teacher.address}");
    teacher.displayCoursesTaught();
  }
}

void main() {
  StudentManagementSystem system = StudentManagementSystem();
  system.main();
}
