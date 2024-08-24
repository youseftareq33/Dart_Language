
void main(){
  List l=[1,2,3];

  try{
    print(l[3]);
  }
  catch(ex){
    print(ex); // print error
  }
  finally{
    print("after catch will execute");
  }
}