
import 'dart:io';

void main(){

  print("---------------------- Math Calculator ----------------------");
  print("\n");

  for(;;){

    String operator;
    print("Operator Type: "+"\n"+
          "1) +"+"\n"+
          "2) -"+"\n"+
          "3) *"+"\n"+
          "4) /");
    print("Please Enter the operator number: ");
    operator=stdin.readLineSync()!;

    while(operator!="1" && operator!="2" && operator!="3" && operator!="4"){
      print("incorrect operator number !!!"+"\n");

      print("Operator Type: "+"\n"+
            "1) +"+"\n"+
            "2) -"+"\n"+
            "3) *"+"\n"+
            "4) /");

      print("Please Re-Enter the operator number: ");
      operator=stdin.readLineSync()!;
    }


    double num1;
    print("Please Enter num1: ");
    num1=double.parse(stdin.readLineSync()!);

    double num2;
    print("Please Enter num2: ");
    num2=double.parse(stdin.readLineSync()!);
    

    double res=math_calc(operator,num1,num2);

    print("\n"+"Result: $res");

    print("===========================================================");
    print("\n");
  }
}

double math_calc(String operator,double num1, double num2){
    
    switch(operator){
      case("1"):
        return num1+num2;

      case("2"):
        return num1-num2;

      case("3"):
        return num1*num2;

      case("4"):
        return num1/num2;    
    }

  return 0;  
}