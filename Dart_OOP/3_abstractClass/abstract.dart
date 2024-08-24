
void main(){
  B b=B();
  b.print_method();

  C c=C();
  c.print_method();
}


abstract class A{
  print_method();
}

class B extends A{
  @override
  print_method() {
    print("class B");
  }
}

class C extends A{
  @override
  print_method() {
    print("class C");
  }
}