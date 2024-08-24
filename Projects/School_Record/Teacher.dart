class Teacher {
  int? _teacher_id;
  String? _teacher_name;
  double? _teacher_salary;



  Teacher(int? teacher_id, String? teacher_name, double? teacher_salary){
    this._teacher_id=teacher_id;
    this._teacher_name=teacher_name;
    this._teacher_salary=teacher_salary;
  }



  get getTeacherId{
    return _teacher_id;
  }
  set setTeacherId(int? teacher_id){
    _teacher_id=teacher_id;
  }

  get getTeacherName{
    return _teacher_name;
  }
  set setTeacherName(String? teacher_name){
    _teacher_name=teacher_name;
  }

  get getTeacherSalary{
    return _teacher_salary;
  }
  set setTeacherSalary(double? teacher_salary){
    _teacher_salary=teacher_salary;
  }



  @override
  String toString(){
    return "Id: "+"$_teacher_id"+", "+"Name: "+"$_teacher_name"+", "+"Salary: "+"$_teacher_salary";
  }

  
}