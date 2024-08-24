
void main(){

A a=A();
a.name="Ahmad";

// a.url="dd"; give error, cause u cannot change static value from instance of that class
A.url="ddddddd"; // u just can do this using call name of class

}

class A{
  String? name;
  static String url="jjj";
}