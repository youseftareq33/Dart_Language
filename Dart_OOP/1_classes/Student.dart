class Student{

  // Attributes
  int? _stud_id; // _ :mean private
  String? stud_name;
  double? stud_grade;


  //=====================================================================
  // Constructor
  Student({required int? stud_id, String? stud_name, double? stud_grade}){ // required mean cannot be null, {}: to use named parameters
    this._stud_id=stud_id; 
    this.stud_name=stud_name;
    this.stud_grade=stud_grade;
  }


  //=====================================================================
  // getter and setter

  // id
  get getStudentId{
    return _stud_id;
  }

  // get getStudentId=>_stud_id;  // we can get it in one line

  set setStudentId(int? stud_id){
    _stud_id=stud_id;
  }

  // set setStudentId(int? stud_id)=>_stud_id=stud_id; // we can set it in one line

  //-----------------------

  // name
  get getStudentName{
    return stud_name;
  }

  set setStudentName(String? stud_name){
    stud_name=stud_name;
  }

  //-----------------------

  // grade
  get getStudentGrade{
    return stud_grade;
  }

  set setStudentGrade(double? stud_grade){
    stud_grade=stud_grade;
  }


  //=====================================================================
  // toString
  @override
  String toString() {
    return "Student id: "+"$_stud_id"+", "+"Student name: "+"$stud_name"+", "+"Student grade: "+"$stud_grade";
  }


  //=====================================================================
  // print student info
  printStudentInfo(){
    print("Student id: "+"$_stud_id"+", "+"Student name: "+"$stud_name"+", "+"Student grade: "+"$stud_grade");
  }
  
}