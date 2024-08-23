
import 'dart:io';
import 'dart:math';

void main(){

  print("---------------------- BMI Calculator ----------------------");
  print("\n");

  for(;;){
    double height;
    print("Please Enter ur Height: ");
    height=double.parse(stdin.readLineSync()!);

    double weight;
    print("Please Enter ur Weight: ");
    weight=double.parse(stdin.readLineSync()!);


    double res=bmi(height,weight);

    print("\n"+"BMI: $res");

    print("==========================================================");
    print("\n");
  }
  

}

double bmi(double height, double weight){
    return weight/pow((height/100), 2);
}