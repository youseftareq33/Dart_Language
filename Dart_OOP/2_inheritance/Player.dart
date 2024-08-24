import 'Person.dart';

class Player extends Person{
  int? _team_num;
  String? _team_name;



  Player(String? name, int? age, int? team_num, String? team_name) : super(name,age){
    this._team_num=team_num;
    this._team_name=team_name;
  }



  get getTeamNum{
      return _team_num;
    }

  set setTeamNum(int? team_num){
    _team_num=team_num;
  }

  get getTeamName{
      return _team_name;
    }

  set setTeamName(String? team_name){
    _team_name=team_name;
  }


  @override
  String toString() {
  return "name: "+"${getName}"+", "+"age: "+"${getAge}"+", "+"team number: "+"$_team_num"+", "+"team name: "+"$_team_name";
  }


}