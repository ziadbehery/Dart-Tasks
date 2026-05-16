void addStudent(Set<String> StudentNames, String name){
    StudentNames.add(name);
}
void printStudents(Set<String> std){
    if(std.length == 0)
        return;
    print(std.first);
    std.remove(std.first);
    printStudents(std);
}

void addCourse(Map<String, dynamic> std, String std_name, String course_name, var grade){
    if(!std.containsKey(std_name)){
        std[std_name] = <String, dynamic>{};
    }
    std[std_name][course_name] = grade;
    
}

double averageGrade(Map<String, dynamic> std, String name){
    if(!std.containsKey(name))
        return 0;
    double sum = 0;
    Map<String, dynamic> grades = std[name];
    int n = grades.length;
    for(var entry in grades.entries){
        sum += entry.value;
    }
    return sum / n;
} 

void main(){

    
    {
        // Part1
        Set<String> StudentNames = {
            "Ali", 
            "Abdullah"
        };
        addStudent(StudentNames, "abdo");
        printStudents(StudentNames);

        StudentNames.forEach((name){
            print(name);
        });

        Set<String> newStudents = {"Ahmad", "Amir"};
        Set<String>  finalStudents = {...StudentNames, ...newStudents};
        finalStudents.forEach((name){
            print(name);
        });

    }
    

    {
        // part2 

        Map<String, dynamic> std = {
            "Ahmed":{
                "math":99,
                "programming": 80
            }
        };

        addCourse(std, "ali", "math", 90);
        addCourse(std, "ali", "programming", 90);
        for(var entry in std.entries){
            print(entry.key);
            for(var entry2 in entry.value.entries){
                print("   ${entry2.key}  :  ${entry2.value}");

            }
        }
        print(averageGrade(std, "ali"));
    }



}