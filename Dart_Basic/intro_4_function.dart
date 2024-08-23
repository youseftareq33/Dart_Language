
void main(){

// note: we can set function inside/outside main function


  //----------------------- void function -----------------------//
  void print_text(){
    print("Hi, I am Yousef");
  }

  print_text();

  //--------------------------------------------------------------





  //----------------------- return function -----------------------//

  // default function parameter
  int x=10;
  int y=20;
  int sum(int x, int y){
    return x+y;
  }

  print(sum(x, y));

  //-----

  // optional function parameter
  String f_name="Yousef";
  String l_name="Sharbi";

  String generateEmail([String? f_name, String? l_name]){ // []: mean the parameter is optional (when u use them inside function they will be in their default value)
    return f_name!+l_name!+"@gmail.com";
  }

  // print(generateEmail()); // give error, cause use null parameter, which mean default value to string
  // print(generateEmail(f_name)); // give error, cause use null parameter, which mean default value to string
  print(generateEmail(f_name,l_name)); // no error
  
  //-----

  // required function parameter
  String userAddress({required String city_name, required String country_name}){ // {} and required: mean the parameter is required
    return "city: "+"$city_name"+"\n"+"country: "+"$country_name";
  }

  print(userAddress(city_name: "Ramallah", country_name: "Palestine"));

  //--------------------------------------------------------------





  //----------------------- arrow function -----------------------//

  int num1=20;
  int num2=10;

  int sums() => (num1+num2);
  print(sums());

  //-----

  subtract(int x, int y)=>(print(x-y));

  subtract(10, 5);

  //--------------------------------------------------------------
}