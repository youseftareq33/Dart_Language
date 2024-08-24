
class Student {
  int? _stud_id;
  String? _stud_name;
  double? _stud_average;



  Student(int? stud_id, String? stud_name, double? stud_average){
    this._stud_id=stud_id;
    this._stud_name=stud_name;
    this._stud_average=stud_average;
  }



  get getStudId{
    return _stud_id;
  }
  set setStudId(int? stud_id){
    _stud_id=stud_id;
  }

  get getStudName{
    return _stud_name;
  }
  set setStudName(String? stud_name){
    _stud_name=stud_name;
  }

  get getStudAverage{
    return _stud_average;
  }
  set setStudAverage(double? stud_average){
    _stud_average=stud_average;
  }
  

  @override
  String toString(){
    return "Id: "+"$_stud_id"+", "+"Name: "+"$_stud_name"+", "+"Average: "+"$_stud_average";
  }
}