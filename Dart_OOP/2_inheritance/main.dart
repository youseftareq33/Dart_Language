
import 'Player.dart';

void main(){
  Player p=Player("Ahmad", 21, 1, "We7dat");

  print(p.toString());

  p.setName="Yousef";
  print("\n"+p.toString());
  
}