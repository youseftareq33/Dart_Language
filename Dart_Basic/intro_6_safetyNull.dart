
void main(){

  //** how to print value without assign value to it?

  // int x;
  // print(x); // in this case it will give error


  // int y=null; // also, here it will give error cause u store null for integer value
  // print(y);

  int? z; // to store null
  print(z);

  z=10;
  // print(z!); ! mean the the value cannot be null, and it will print 10
}