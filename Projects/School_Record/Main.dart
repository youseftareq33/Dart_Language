import 'dart:io';

import 'Student.dart';
import 'Teacher.dart';

Map<int,Student> student_records={};
Map<int,Teacher> teacher_records={};

File student_file= File('/Dart/Projects/School_Record/record_data/student_record.txt');
File teacher_file= File('/Dart/Projects/School_Record/record_data/teacher_record.txt');

void main(){

  print("================ School Record ================");
  // load data
  readStudentInfo();
  readTeacherInfo();
  for(;;){

    int? option;
    while(option!=5){
      print("---------------------------------------------------------------");
      print("Record Type:");
      print("1) Student Record"+"\n"+
            "2) Teacher Record"+"\n"+
            "3) Exit System");

      print("choice number: ");
      int? choice=int.parse(stdin.readLineSync()!);
      
      while(choice!=1 && choice!=2 && choice!=3){
        print("Invalid Input !!!");

        print("Record Type:");
        print("1) Student Record"+"\n"+
              "2) Teacher Record"+"\n"+
              "3) Exit System");

        print("choice number: ");
        choice=int.parse(stdin.readLineSync()!);
      }

      String? record_type;
      if(choice==1){
        record_type="student";
      }
      else if(choice==2){
        record_type="teacher";
      }
      else if(choice==3){
        exit(0);
      }      
      
      print("Record Option: ");
      print("1) Add Record"+"\n"+
            "2) Delete Record"+"\n"+
            "3) Update on Record"+"\n"+
            "4) Print Records"+"\n"+
            "5) Return to Record Type");
      print("Option number: ");
      option=int.parse(stdin.readLineSync()!);      

      while(option!=1 && option!=2 && option!=3 && option!=4 && option!=5){
        print("Record Option: ");
        print("1) Add Record"+"\n"+
              "2) Delete Record"+"\n"+
              "3) Update on Record"+"\n"+
              "4) Print Records"+"\n"+
              "5) Return to Record Type");
        print("Option number: ");
        option=int.parse(stdin.readLineSync()!);  
      }

      switch(option){
        case(1):
          if(record_type=="student"){
            print("-- Add Student Record --");
            print("Student Id: ");
            int? stud_id=int.parse(stdin.readLineSync()!);
            print("Student name: ");
            String? stud_name=stdin.readLineSync()!;
            print("Student Average: ");
            double? stud_average=double.parse(stdin.readLineSync()!);

            addStudentRecord(stud_id, stud_name, stud_average);
          }
          else if(record_type=="teacher"){
            print("-- Add Teacher Record --");
            print("Teacher Id: ");
            int? teacher_id=int.parse(stdin.readLineSync()!);
            print("Teacher name: ");
            String? teacher_name=stdin.readLineSync()!;
            print("Teacher Salary: ");
            double? teacher_salary=double.parse(stdin.readLineSync()!);

            addTeacherRecord(teacher_id, teacher_name, teacher_salary);
          }

        break;

        case(2):
          if(record_type=="student"){
            print("-- Delete Student Record --");
            print("Student Id: ");
            int? stud_id=int.parse(stdin.readLineSync()!);

            deleteStudentRecord(stud_id);
          }
          else if(record_type=="teacher"){
            print("-- Delete Teacher Record --");
            print("Teacher Id: ");
            int? teacher_id=int.parse(stdin.readLineSync()!);

            deleteTeacherRecord(teacher_id);
          }
        
        break;

        case(3):
          if(record_type=="student"){
            print("-- Update Student Record --");
            print("Student Id: ");
            int? stud_id=int.parse(stdin.readLineSync()!);

            updateStudentRecord(stud_id);
          }
          else if(record_type=="teacher"){
            print("-- Update Teacher Record --");
            print("Teacher Id: ");
            int? teacher_id=int.parse(stdin.readLineSync()!);

            updateTeacherRecord(teacher_id);
          }
        
        break;

        case(4):
          if(record_type=="student"){
            printStudentInfo();
          }
          else if(record_type=="teacher"){
            printTeacherInfo();
          }
        
        break;
      }

    }
      
  }
  
}


//------------------ Method ------------------

// student

readStudentInfo() async {
  
  if(!await student_file.exists()){
    print("student_record.txt File not found !!!");
  }
  else if(await student_file.length()==0){
    print("student_record.txt File is Empty");
  }
  else{
    List<String> lines = await student_file.readAsLines();
    for (String line in lines) {
      List<String> stud_list= line.split(",");

      Student stud=Student(int.parse(stud_list[0]), stud_list[1], double.parse(stud_list[2]));
      student_records[int.parse(stud_list[0])]=stud;
    }

    print("Student Information Loaded Succesfully");
  }
  
}

printStudentInfo(){
  int i=1;
  student_records.forEach((key, value) {
    Student stud=value;
    print("Student ("+"$i"+"): "+stud.toString());
    i++;
  });
}

addStudentRecord(int? stud_id, String? stud_name, double? stud_average) async{
  student_records[stud_id!]=Student(stud_id, stud_name, stud_average);

  if(await student_file.length()==0){
    await student_file.writeAsString("$stud_id"+","+"$stud_name"+","+"$stud_average", mode: FileMode.append);
  }
  else{
    await student_file.writeAsString("\n"+"$stud_id"+","+"$stud_name"+","+"$stud_average", mode: FileMode.append);
  }

  print("Student "+"$stud_name"+" added succesfully");
}

deleteStudentRecord(int? stud_id){
  if(student_records.containsKey(stud_id)){
    student_records.remove(stud_id!);
    print("Student with this id: "+"$stud_id"+" deleted succesfully");
  }
  else{
    print("Student with this id dosen't exist !!!");
  }
  
}

updateStudentRecord(int? stud_id){
  if(student_records.containsKey(stud_id)){
    print("Student name: ");
    String? stud_name=stdin.readLineSync()!;
    print("Student Average: ");
    double? stud_average=double.parse(stdin.readLineSync()!);
    student_records[stud_id!]=Student(stud_id, stud_name, stud_average);

    print("Student with this id: "+"$stud_id"+" updated succesfully");
  }
  else{
    print("Student with this id dosen't exist !!!");
  }
  
}



// teacher

readTeacherInfo() async {
  
  if(!await teacher_file.exists()){
    print("teacher_record.txt File not found !!!");
  }
  else if(await teacher_file.length()==0){
    print("teacher_record.txt File is Empty");
  }
  else{
    List<String> lines = await teacher_file.readAsLines();

    for (String line in lines) {
      List<String> teacher_list= line.split(",");

      Teacher teacher=Teacher(int.parse(teacher_list[0]), teacher_list[1], double.parse(teacher_list[2]));
      teacher_records[int.parse(teacher_list[0])]=teacher;
    }

    print("Teacher Information Loaded Succesfully");
  }

  
}

printTeacherInfo(){
  int i=1;
  teacher_records.forEach((key, value) {
    Teacher teacher=value;
    print("Teacher ("+"$i"+"): "+teacher.toString());
    i++;
  });
}

addTeacherRecord(int? teacher_id, String? teacher_name, double? teacher_salary) async{
  teacher_records[teacher_id!]=Teacher(teacher_id, teacher_name, teacher_salary);

  if(await teacher_file.length()==0){
    await teacher_file.writeAsString("$teacher_id"+","+"$teacher_name"+","+"$teacher_salary", mode: FileMode.append);
  }
  else{
    await teacher_file.writeAsString("\n"+"$teacher_id"+","+"$teacher_name"+","+"$teacher_salary", mode: FileMode.append);
  }

  print("Teacher "+"$teacher_name"+" added succesfully");
}

deleteTeacherRecord(int? teacher_id){
  if(teacher_records.containsKey(teacher_id)){
    teacher_records.remove(teacher_id!);
    print("Teacher with this id: "+"$teacher_id"+" deleted succesfully");
  }
  else{
    print("Teacher with this id dosen't exist !!!");
  }
  
}

updateTeacherRecord(int? teacher_id){
  if(teacher_records.containsKey(teacher_id)){
    print("Teacher name: ");
    String? teacher_name=stdin.readLineSync()!;
    print("Teacher Salary: ");
    double? teacher_salary=double.parse(stdin.readLineSync()!);
    teacher_records[teacher_id!]=Teacher(teacher_id, teacher_name, teacher_salary);

    print("Teacher with this id: "+"$teacher_id"+" updated succesfully");
  }
  else{
    print("Teacher with this id dosen't exist !!!");
  }
  
}