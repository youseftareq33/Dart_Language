void main(){

  //----------------------- Lists -----------------------//
  List<int> l_int=[1,2,3];
  print(l_int);

  List<dynamic> l_d=[1,2,"hi",true];
  print(l_d);

  var v_int=[1,2,3]; 
  print(v_int);

  var v_d=[1,2,3,"hi"]; 
  print(v_d);

  //--------------

  List<int> list=[1,2,3];

  // get list size:
  print(list.length);

  // get element:
  print(list[0]); // get element by index

  print(list.first); // get first element
  print(list.last); // get last element

  // add element:
  list.add(4); // add one element

  list.addAll([5,6,7]); // add multiple element

  // delete element:
  list.removeAt(0); // delete element by index
  list.remove(2); // delete element by it's value

  // list inside list:
  List l=[1,2,3,[4,5,6]];

  print(l[0][0]);

  //--------------------------------------------------------------



  //----------------------- Sets -----------------------//

  // same of list, but it doesn't allow duplicate

  // Set<int> set={1,2,2,3}; incorrect

  Set<int> set={1,2,3}; // correct
  print(set);

  print(set.toList()[0]); // get element by index (convert it to list)

  //--------------------------------------------------------------



  //----------------------- Maps -----------------------//

  Map<int,dynamic> map={
    1:"Ahmad",
    2:"Yousef",
    3:"Osama",
    4:"Anas",
    5:{6:"Rami"}
  };

  print(map);

  print(map[1]); // get value from key

  print(map[5][6]);

  //--------------------------------------------------------------

}