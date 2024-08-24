
import 'Student.dart';

void main(){
  Student stud=Student(stud_id: 1, stud_name: "Yousef", stud_grade: 85.6); // create object using named parameters

  print("Student Info: "+"\n"+"${stud.toString()}");
  // or u can use this
  // stud.printStudentInfo(); 

  print("\n");
  print("student id: "+"${stud.getStudentId}");

  stud.setStudentId=3; // change student id

  print("student id: "+"${stud.getStudentId}");

}