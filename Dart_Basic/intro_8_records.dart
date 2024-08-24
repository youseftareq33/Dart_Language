
void main(){

  print(result1()); // return datatype is set

  print(result2()); // return datatype is integer and string

  Record record=result3();
  print(record.toString());
  
  var record2=("Hello", 5, g:"GG", true);
  print(record2.$1); // Hello
  print(record2.g); // GG
}

result1(){
  int? sum;
  String? res;

  sum=900;
  res="done";

  return {sum,res};
}

(int ,String) result2(){
  int? sum;
  String? res;

  sum=900;
  res="done";

  return (sum,res);
}

Record result3(){ // record used if i dont know what the data type i should return
  int? sum;
  String? res;

  sum=900;
  res="done";

  return (sum,res);
}