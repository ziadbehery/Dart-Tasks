import "dart:io";

class Person{
  String name="";
  int _age=0;
  static String university="Sohag University";

  Person(this.name);

  int get age => _age;
  set age(int value){
    this._age=value;
  }
}

class Employee extends Person{
  int _salary=0;

  Employee(String name):super(name);

  set salary(int value){
    this._salary=value;
  }

  int get salary => _salary;

  void showInfo(){
    print("Name:$name | Age:$age | Salary:$_salary");
  }
}

abstract class Skills{
  void programming();
  void communication();
}

class Developer extends Employee implements Skills{
  String specialization;

  Developer(String name, this.specialization):super(name);

  @override
  void programming(){
    print("Task:Writing and debugging code.");
  }

  @override
  void communication(){
    print("Task:Presenting technical solutions to the team.");
  }

  @override
  void showInfo(){
    super.showInfo();
    print("Specialization:${this.specialization}");
  }
}

void main(){
  var dev=Developer("Ali Nasser", "Software Engineer");
  dev.age=23;
  dev.salary=300000;

  dev.showInfo();
  dev.programming();
  dev.communication();
  
  print("Education:${Person.university}");
}