
void main(){

  //----------------------- Print -----------------------//

  print("Hello Dart");

  print(100);

  print(100-50);


  // suppose num=2.5
  print(5/2); // 2.5

  print(5~/2); // 2

  //=====================================================//






  //----------------------- Variable -----------------------//
  
  // data type:

    // integer
    int x=1;
    print(x);

    // double
    double y=1.2; // there is no float datatype in dart
    print(y);

    // string
    String s="yousef";
    print("$s name length is: ${s.length}");

    // boolean
    bool b=true;
    print(b);

    // var
    var num_v_1=10;
    var num_v_2=10.3;
    var str_v="Hi";
    print("$num_v_1"+" "+"$num_v_2"+" "+str_v);

    // dynamic
    dynamic num_d_1=10;
    dynamic num_d_2=10.2;
    dynamic str_d="Hi";
    print("$num_d_1"+" "+"$num_d_2"+" "+str_d);
  //-------------------------------------------------

  //default_datatype vs var vs dynamic:

    int num=10;
    num=20;
    // num=20.2;  error 
    print(num);

    var num_v=10;
    num_v=30;
    // num_v=30.2;  error
    print(num_v);

    dynamic num_d=10;
    num_d=20;
    num_d=20.2;
    num_d="hi";
    print(num_d);
  //-------------------------------------------------

  // constant vs final

    // const date_c=DateTime.now(); error, cause constant dosent change value before run application
    final date_f=DateTime.now(); // no error, cause final  dosent change value after run application

    print(date_f);
  //-------------------------------------------------

//=====================================================//
  

}