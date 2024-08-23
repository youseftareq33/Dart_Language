
import 'dart:io';

void main(){
  String? name;
  int? age;

  print("Please enter ur name: ");
  name=stdin.readLineSync();

  print("Please enter ur age: ");
  age=int.parse(stdin.readLineSync()!);

  print("\n"+"--------------------------------------");
  print("name: "+"$name"+"\n"+
  "age: "+"$age");

}