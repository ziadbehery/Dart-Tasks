import 'dart:io';

int enterStudentsNumber() {
  int? noStd;
  while (true) {
    noStd = int.tryParse(stdin.readLineSync() ?? "");
    if (noStd == null || noStd < 0) {
      print("enter A valid number");
    } else {
      break;
    }
  }
  return noStd;
}

void main() {
  print("Enter Number of Students");
  int noStd = enterStudentsNumber();

  List<String?> names = [];
  List<List<double>> allGrades = [];

  for (int i = 0; i < noStd; i++) {
    print('Enter name of student ${i + 1}');
    String? name = stdin.readLineSync();
    names.add(name);
  }

  for (int i = 0; i < noStd; i++) {
    print("--- Student: ${names[i]} ----");
    print("Enter number of subjects");
    int noSubjects = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
    

    List<double> grades = []; 
    
    print("Enter your subjects grades");
    for (int j = 0; j < noSubjects; j++) {
      double d = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;
      grades.add(d);
    }
    allGrades.add(grades);
  }


  for (int i = 0; i < noStd; i++) {
    print('Student Name: ${names[i]}');
    double sum = 0;
    
    for (int j = 0; j < allGrades[i].length; j++) {
      sum += allGrades[i][j];
    }

    if (allGrades[i].length != 0) {
      print("His average is ${sum / allGrades[i].length}");
    } else {
      print("No grades entered");
    }
    print('--------------------');
  }
}