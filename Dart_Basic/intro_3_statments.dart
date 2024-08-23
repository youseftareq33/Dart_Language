
import 'dart:io';

void main(){

  //----------------------- if-statment -----------------------//
  int? grade;

  print("Please enter ur grade: ");
  grade=int.parse(stdin.readLineSync()!);

  if(grade<50){
    print("fail");
  }
  else if(grade>50 && grade<90){
    print("pass");
  }
  else{
    print("pass - excellent");
  }

  //--------------------------------------------------------------





  //----------------------- switch-case -----------------------//
  String color="Green";

  switch(color){
    case "Green":
      print("Green Apple");
      break;

    case "Red":
      print("Red Apple");
      break;

    default:
      print("choose another color");
  }

  //--
  
  int num=10;

  switch(num){
    case >5 && <7:
      print(num);
      break;

    case >7:
      print(num);

    default:
      print("choose any other number");
  }

  //--------------------------------------------------------------





  //----------------------- for-loop -----------------------//

  for(int i=0;i<10;i++){
    print("loop: ("+"$i"+")");
  }

  //--------------------------------------------------------------





  //----------------------- while & do -----------------------//

  int x=10;
  while(x>0){
    print("x: "+"$x");
    x--;
  }

  //--

  int y=10;
  do{
    print("x: "+"$x");
    x--;
  } while(y>0);

//--------------------------------------------------------------


}