import 'dart:io';

import 'Student.dart';
import 'Teacher.dart';

Map<int,Student> student_records={};
Map<int,Teacher> teacher_records={};

File student_file= File('/Dart/Projects/School_Record/student_record.txt');
File teacher_file= File('/Dart/Projects/School_Record/teacher_record.txt');

void main(){

  // load data
  readStudentInfo();
  readTeacherInfo();

  

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

}

addStudentRecord(int? stud_id, String? stud_name, double? stud_average) async{
  student_records[stud_id!]=Student(stud_id, stud_name, stud_average);

  if(await student_file.length()==0){
    await student_file.writeAsString("$stud_id"+","+"$stud_name"+","+"$stud_average", mode: FileMode.append);
  }
  else{
    await student_file.writeAsString("\n"+"$stud_id"+","+"$stud_name"+","+"$stud_average", mode: FileMode.append);
  }
}

deleteStudentRecord(int? stud_id){
  student_records.remove(stud_id!);
}

updateStudentRecord(int? stud_id, String? stud_name, double? stud_average){
  student_records[stud_id!]=Student(stud_id, stud_name, stud_average);
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