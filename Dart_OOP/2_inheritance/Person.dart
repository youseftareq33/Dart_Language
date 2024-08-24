class Person{
    String? _name;
    int? _age;



    Person(String? name, int? age){
      this._name=name;
      this._age=age;
    }



    get getName{
      return _name;
    }

    set setName(String? name){
      _name=name;
    }

    get getAge{
      return _age;
    }

    set setAge(int? age){
      _age=age;
    }



    @override
    String toString() {
    return "name: "+"$_name"+", "+"age: "+"$_age";
    }

}